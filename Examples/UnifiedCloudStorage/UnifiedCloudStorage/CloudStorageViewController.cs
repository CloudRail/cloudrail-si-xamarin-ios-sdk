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

			if (selectedService == "Box")
			{
				cloudStorage = new CRBox("qnskodzvd2naq16xowc40t43fug2848n", "cQE7Sf9DzZqChjvCTxIMTp3ye6hynhTd");
			}
			else if (selectedService == "Dropbox")
			{
				cloudStorage  = new CRDropbox("38nu3lwdvyaqs78", "c95g0wfkdv6ua2d");
			}
			else if (selectedService == "Google Drive")
			{
                CRGoogleDrive drive = new CRGoogleDrive("1007170750392-r3p483hu2q02nsp45679dbqsbt9po8h0.apps.googleusercontent.com", "","com.cloudrail.unifiedcloudstorage:/oauth2redirect", "State");
                drive.UseAdvancedAuthentication();
                cloudStorage = drive;
			}
			else if (selectedService == "One Drive")
			{
				cloudStorage = new CROneDrive("000000004018F12F", "lGQPubehDO6eklir1GQmIuCPFfzwihMo");
			}
			else if (selectedService == "One Drive for Business")
			{
				cloudStorage = new CROneDriveBusiness("", "");
			}
			else if (selectedService == "Egnynte")
			{
				cloudStorage = new CREgnyte("cloudrailcloudtest", "k9y879bha2kmsyyqx4urtnaz", "TsgByd2YZqsJPyYMDhEB6ctAYQ6kP35qYTnEG9urPKq2eNNXRF", "https://www.cloudrailauth.com/auth", "State");
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

