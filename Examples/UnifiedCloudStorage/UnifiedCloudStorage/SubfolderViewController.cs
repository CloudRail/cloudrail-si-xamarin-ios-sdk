using System;
using Foundation;
using CloudRailSI;
using UIKit;
using SafariServices;
using ObjCRuntime;
using CoreGraphics;
using CoreFoundation;
using CoreAnimation;

namespace UnifiedCloudStorage
{
    public partial class SubfolderViewController : UITableViewController
    {
        public ICRCloudStorageProtocol cloudStorage { get; set; }
        public CRCloudMetaData metaData { get; set; }
		public CloudStorageLogic cloudStorageLogic;
		public UIActivityIndicatorView activityIndicator;


		protected SubfolderViewController(IntPtr handle) : base(handle)
        {
			// Note: this .ctor should not contain any initialization logic.
		}

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            TableView.TableFooterView = new UIView();

			this.NavigationItem.SetLeftBarButtonItem(new UIBarButtonItem(
			UIImage.FromBundle("BackArrow"), UIBarButtonItemStyle.Plain, (sender, args) =>
			{
				NavigationController.PopViewController(true);
			}), true);

            this.Title = metaData.Name;

			cloudStorageLogic = new CloudStorageLogic();


			activityIndicator = new UIActivityIndicatorView(UIActivityIndicatorViewStyle.White);
			activityIndicator.Frame = new CGRect(150, 120, 30, 30);
			activityIndicator.Center = View.Center;
			View.AddSubview(activityIndicator);
			activityIndicator.BringSubviewToFront(View);
			activityIndicator.Color = UIColor.LightGray;
			activityIndicator.StartAnimating();

            //Peform delay 1
            PerformSelector(new Selector("GetFilesFolders"), null, 1.0f);
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }

		[Export("GetFilesFolders")]
		public void GetFilesFolders()
		{
			new System.Threading.Thread(new System.Threading.ThreadStart(() =>
				{
                    CRCloudMetaData[] data = cloudStorageLogic.ChildrenOfFolderWithPath(cloudStorage, metaData.Path);
                    cloudStorage.GetSaveAsString();
					InvokeOnMainThread(() =>
					{
						activityIndicator.StopAnimating();
						TableView.Source = new SubfolderSource(data, cloudStorage, this);
						TableView.ReloadData();
					});
				})).Start();
		}

    }
}

