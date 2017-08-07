using System;
using UIKit;

namespace UnifiedCloudStorage
{
	public class ListTableSource : UITableViewSource
	{
		string[] tableItems;
		string cellIdentifier = "ItemCell";
        private ListViewController _controller;
		
        public ListTableSource(string[] items, ListViewController controller)
		{
			tableItems = items;
            this._controller = controller;
		}

		public override nint RowsInSection(UITableView tableview, nint section)
		{
			return tableItems.Length;
		}

		public override void RowSelected(UITableView tableView, Foundation.NSIndexPath indexPath)
		{
            _controller.PerformSegue("CloudSegue", _controller);
			tableView.DeselectRow(indexPath, true);
		}

		public override UITableViewCell GetCell(UITableView tableView, Foundation.NSIndexPath indexPath)
		{
			UITableViewCell cell = tableView.DequeueReusableCell(cellIdentifier);
			if (cell == null)
				cell = new UITableViewCell(UITableViewCellStyle.Default, cellIdentifier);
			cell.TextLabel.Text = tableItems[indexPath.Row];
			cell.ImageView.Image = UIImage.FromBundle(tableItems[indexPath.Row]);
			return cell;
		}

		public string GetItem(int id)
		{
			return tableItems[id];
		}

	}

}