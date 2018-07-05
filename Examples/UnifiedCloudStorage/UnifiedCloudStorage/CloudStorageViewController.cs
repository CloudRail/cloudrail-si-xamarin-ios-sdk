using System;
using UIKit;
using Foundation;
using CloudRailSI;
using SafariServices;
using ObjCRuntime;
using CoreGraphics;
using CoreFoundation;
using CoreAnimation;

namespace UnifiedCloudStorage
{
    public partial class CloudStorageViewController : UITableViewController
    {
        public string selectedService { get; set; }
        public ICRCloudStorageProtocol cloudStorage;
        public CloudStorageLogic cloudStorageLogic;
        public UIImagePickerController imagePicker;
        public UIActivityIndicatorView activityIndicator;

		protected CloudStorageViewController(IntPtr handle) : base(handle)
        {
			// Note: this .ctor should not contain any initialization logic.
		}

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

			this.NavigationItem.SetLeftBarButtonItem(new UIBarButtonItem(
			UIImage.FromBundle("BackArrow"), UIBarButtonItemStyle.Plain, (sender, args) =>
			{
				NavigationController.PopViewController(true);
			}), true);

            this.Title = selectedService;

            TableView.TableFooterView = new UIView();

			this.NavigationItem.SetRightBarButtonItem(new UIBarButtonItem(
                UIBarButtonSystemItem.Add, (sender, args) =>
	        {
                var alert = UIAlertController.Create("Upload File", "Uploads photos to Cloud Ctorage", UIAlertControllerStyle.ActionSheet);

				alert.AddAction(UIAlertAction.Create("Cancel", UIAlertActionStyle.Cancel, null));
				alert.AddAction(UIAlertAction.Create("Take a Photo", UIAlertActionStyle.Default, action => CameraPhoto()));
                alert.AddAction(UIAlertAction.Create("Choose a Photo", UIAlertActionStyle.Default, action => UploadImage()));
				PresentViewController(alert, animated: true, completionHandler: null);
	        }), true);


            activityIndicator = new UIActivityIndicatorView(UIActivityIndicatorViewStyle.White);
			activityIndicator.Frame = new CGRect(150, 120, 30, 30);
			activityIndicator.Center = View.Center;
			View.AddSubview(activityIndicator);
            activityIndicator.BringSubviewToFront(View);
            activityIndicator.Color = UIColor.LightGray;
            activityIndicator.StartAnimating();

            cloudStorageLogic = new CloudStorageLogic();

            //Setup:
            //https://cloudrail.com/integrations/interfaces/CloudStorage;serviceIds=Box,Dropbox,Egnyte,GoogleDrive,OneDrive,OneDriveBusiness,PCloud;platformId=XamarinIOS;tab=setup

			if (selectedService == "Box")
			{
                cloudStorage = new CRBox("Box Client Identifier", "Box Client Secret");
			}
			else if (selectedService == "Dropbox")
			{
                CRDropbox dropbox = new CRDropbox("Dropbox Client Identifier", "Dropbox Client Secret", "https://auth.cloudrail.com/com.cloudrail.unifiedcloudstorage", "State");
                dropbox.UseAdvancedAuthentication();
                cloudStorage = dropbox;
			}
			else if (selectedService == "Google Drive")
			{
                //NOTE: Only Need Client Identifier
                CRGoogleDrive drive = new CRGoogleDrive("Google Drive Client Identifier", "","com.cloudrail.unifiedcloudstorage:/oauth2redirect", "State");
                drive.UseAdvancedAuthentication();
                cloudStorage = drive;
			}
			else if (selectedService == "One Drive")
			{
                cloudStorage = new CROneDrive("OneDrive Client Identifier", "OneDrive Client Secret");
			}
			else if (selectedService == "One Drive for Business")
			{
                cloudStorage = new CROneDriveBusiness("OneDrive Business Client Identifier", "OneDrive Business Client Secret");
			}
			else if (selectedService == "Egnynte")
			{
                cloudStorage = new CREgnyte("Your Egnyte Domain", "Your Egnyte API Key", "Your Egnyte Shared Secret", "https://www.cloudrailauth.com/auth", "State");
			}
            else if (selectedService == "PCloud")
            {
                cloudStorage = new CRPCloud("PCloud Client Identifier", "PCloud Client Secret");
            }

            //First Service Called (delay it by 500 millseconds for Advanced Authentication)
			PerformSelector(new Selector("GetRootFilesFolders"), null, 1.0f);
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }

        //Cloudrail CloudStorage Methods - Get Root Files / Folders

        [Export("GetRootFilesFolders")]
        public void GetRootFilesFolders() 
        {
			//Load Service Credentials 
			string value = NSUserDefaults.StandardUserDefaults.StringForKey(selectedService);
			if (value != null)
			{
				cloudStorage.LoadAsString(value);
			}

			new System.Threading.Thread(new System.Threading.ThreadStart(() =>
				{
					CRCloudMetaData[] data = cloudStorageLogic.ChildrenOfFolderWithPath(cloudStorage, "/");
                    cloudStorage.GetSaveAsString();
                    
					if (data.Length > 0)
					{
						//Save Service Credentials 
						NSUserDefaults.StandardUserDefaults.SetString(cloudStorage.GetSaveAsString(), selectedService);
						NSUserDefaults.StandardUserDefaults.Synchronize();
					}
                    
					InvokeOnMainThread(() =>
					{
                        activityIndicator.StopAnimating();
                        TableView.Source = new CloudStorageSource(data, cloudStorage, this);
                        TableView.ReloadData();
					});
				})).Start();
        }


        //Camera Photo
		public void CameraPhoto()
		{
			imagePicker = new UIImagePickerController();
			imagePicker.SourceType = UIImagePickerControllerSourceType.Camera;
			imagePicker.MediaTypes = UIImagePickerController.AvailableMediaTypes(UIImagePickerControllerSourceType.Camera);
			imagePicker.FinishedPickingMedia += Handle_FinishedPickingMedia;
			imagePicker.Canceled += Handle_Canceled;

			NavigationController.PresentViewController(imagePicker, true, null);
		}

		//Gallery Photo, Upload
		public void UploadImage()
        {
			imagePicker = new UIImagePickerController();
			imagePicker.SourceType = UIImagePickerControllerSourceType.PhotoLibrary;
			imagePicker.MediaTypes = UIImagePickerController.AvailableMediaTypes(UIImagePickerControllerSourceType.PhotoLibrary);
			imagePicker.FinishedPickingMedia += Handle_FinishedPickingMedia;
			imagePicker.Canceled += Handle_Canceled;

            NavigationController.PresentViewController(imagePicker,true,null);
        }

		//Handle FinishedPickingMedia
		protected void Handle_FinishedPickingMedia(object sender, UIImagePickerMediaPickedEventArgs e)
		{
			// determine what was selected, video or image
			bool isImage = false;
			switch (e.Info[UIImagePickerController.MediaType].ToString())
			{
				case "public.image":
					Console.WriteLine("Image selected");
					isImage = true;
					break;
				case "public.video":
					Console.WriteLine("Video selected");
					break;
			}

			// get common info (shared between images and video)
			NSUrl referenceURL = e.Info[new NSString("UIImagePickerControllerReferenceUrl")] as NSUrl;
			if (referenceURL != null)
				Console.WriteLine("Url:" + referenceURL.ToString());

			// if it was an image, get the other image info
			if (isImage)
			{
				// get the original image
				UIImage originalImage = e.Info[UIImagePickerController.OriginalImage] as UIImage;
				if (originalImage != null)
				{
					// do something with the image
					Console.WriteLine("got the original image");
                    NSData data = originalImage.AsJPEG(0.5f);

                    //Upload Image
                    this.UploadImageVideo(false, data);
				}
			}
			else
			{ // if it's a video
			  // get video url
				NSUrl mediaURL = e.Info[UIImagePickerController.MediaURL] as NSUrl;
				if (mediaURL != null)
				{
                    //Upload Video
                    this.UploadImageVideo(true, NSData.FromUrl(mediaURL));
				}
			}
			// dismiss the picker
			imagePicker.DismissViewController(true, null);
		}

		void Handle_Canceled(object sender, EventArgs e)
		{
            imagePicker.DismissViewController(true,null);
		}

        //Upload Image / Video

        void UploadImageVideo(bool isVideo, NSData data)
        {
			NSInputStream inputStream = new NSInputStream(data);

			//Upload Image using CloudRail
			var len = (int)data.Length;

			Random rand1 = new Random();
            string extensionName = isVideo?".mov":".jpg";
            string fileName = "/" + rand1.Next() + extensionName;//".jpg":".mov";

			new System.Threading.Thread(new System.Threading.ThreadStart(() =>
			{
				cloudStorageLogic.UploadFileToPath(cloudStorage, fileName, inputStream, len, true);
                GetRootFilesFolders();
			})).Start();
        }

		public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
		{
			base.PrepareForSegue(segue, sender);
			if (segue.Identifier == "SubfolderSegue")
			{
                var navctlr = segue.DestinationViewController as SubfolderViewController;
				if (navctlr != null)
				{
                    var source = TableView.Source as CloudStorageSource;
					var rowPath = TableView.IndexPathForSelectedRow;
                    navctlr.metaData = source.GetMetaData(rowPath.Row);
                    navctlr.cloudStorage = this.cloudStorage;
				}
			}
		}
    }
}

