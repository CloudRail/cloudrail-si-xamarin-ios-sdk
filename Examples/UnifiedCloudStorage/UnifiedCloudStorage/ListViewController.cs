using System;
using UIKit;
using Foundation;
using CloudRailSI;

namespace UnifiedCloudStorage
{
    public partial class ListViewController : UITableViewController
    {
		protected ListViewController(IntPtr handle) : base(handle)
        {
			// Note: this .ctor should not contain any initialization logic.
		}

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            TableView.TableFooterView = new UIView();
            string[] data = new string[] { "Box", "Dropbox", "Google Drive", "One Drive", "Egnynte", "PCloud" };
            TableView.Source = new ListTableSource(data, this);
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
			if (segue.Identifier == "CloudSegue")
			{
				var navctlr = segue.DestinationViewController as CloudStorageViewController;
				if (navctlr != null)
				{
					var source = TableView.Source as ListTableSource;
					var rowPath = TableView.IndexPathForSelectedRow;
					navctlr.selectedService = source.GetItem(rowPath.Row);
				}
			}
		}
    }
}

