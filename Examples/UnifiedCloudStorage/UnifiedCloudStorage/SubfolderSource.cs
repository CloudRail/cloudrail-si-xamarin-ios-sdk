using System;
using CloudRailSI;
using Foundation;
using System.Runtime.InteropServices;
using System.IO;
using UIKit;

namespace UnifiedCloudStorage
{
    public class SubfolderSource: UITableViewSource
    {
		string cellIdentifier = "ItemCell";
		private CRCloudMetaData[] _metaData;
		private Helper helper;
		private ICRCloudStorageProtocol _cloudStorage;
		private SubfolderViewController _controller;
		private CloudStorageLogic logic;


		public SubfolderSource(CRCloudMetaData[] metaData, ICRCloudStorageProtocol cloudStorage, SubfolderViewController controller)
		{
			this._metaData = metaData;
			this._cloudStorage = cloudStorage;
			this._controller = controller;
			helper = new Helper();
			logic = new CloudStorageLogic();
		}

		public override nint RowsInSection(UITableView tableview, nint section)
		{
			return _metaData.Length;
		}

		public override void RowSelected(UITableView tableView, Foundation.NSIndexPath indexPath)
		{
			tableView.DeselectRow(indexPath, true);
		}

		public override UITableViewCell GetCell(UITableView tableView, Foundation.NSIndexPath indexPath)
		{
			UITableViewCell cell = tableView.DequeueReusableCell(cellIdentifier);
			if (cell == null)
				cell = new UITableViewCell(UITableViewCellStyle.Default, cellIdentifier);

			CRCloudMetaData data = _metaData[indexPath.Row];

			cell.TextLabel.Text = data.Name;
			cell.ImageView.Image = helper.GetImage(data);

			return cell;
		}


    }
}
