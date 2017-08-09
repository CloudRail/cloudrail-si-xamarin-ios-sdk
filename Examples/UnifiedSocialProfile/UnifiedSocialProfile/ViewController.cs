using System;

using UIKit;

namespace UnifiedSocialProfile
{
    public partial class ViewController : UITableViewController
    {
        string[] services = { "Facebook", "GitHub", "GooglePlus", "Heroku", "Instagram", "LinkedIn", "Product Hunt", "Slack", "Twitter", "Windows Live", "Yahoo!" };

        protected ViewController(IntPtr handle) : base(handle)
        {
            // Note: this .ctor should not contain any initialization logic.
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            // Perform any additional setup after loading the view, typically from a nib.
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }

		public override nint NumberOfSections(UITableView tableView)
		{
			return 1;
		}

		public override nint RowsInSection(UITableView tableView, nint section)
		{
			return services.Length;
		}

		public override UITableViewCell GetCell(UITableView tableView, Foundation.NSIndexPath indexPath)
		{
            UITableViewCell cell = tableView.DequeueReusableCell("Cell", indexPath);
			cell.TextLabel.Text = services[indexPath.Row];
			return cell;
		}

        public override void PrepareForSegue(UIStoryboardSegue segue, Foundation.NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if (segue.Identifier == "showProfile") {
                Foundation.NSIndexPath indexPath = TableView.IndexPathForSelectedRow;
                ProfileViewController destView = segue.DestinationViewController as ProfileViewController;
                destView.servicePosition = indexPath.Row;
            }
        }
    }
}
