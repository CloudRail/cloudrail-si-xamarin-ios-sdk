using System;
using UIKit;
using CloudRailSI;
using Foundation;
using System.Runtime.InteropServices;
using System.IO;

namespace UnifiedCloudStorage
{
    public class CloudStorageSource: UITableViewSource
    {
		string cellIdentifier = "ItemCell";
		private CRCloudMetaData[] _metaData;
        private Helper helper;
        private ICRCloudStorageProtocol _cloudStorage;
        private CloudStorageViewController _controller;
        private CloudStorageLogic logic;

        public CloudStorageSource(CRCloudMetaData[] metaData, ICRCloudStorageProtocol cloudStorage, CloudStorageViewController controller)
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
            CRCloudMetaData data = _metaData[indexPath.Row];

            if (!helper.isFolder(data))
            {
				var alert = UIAlertController.Create("Options", "Share, Download, Delete File", UIAlertControllerStyle.ActionSheet);
				alert.AddAction(UIAlertAction.Create("Cancel", UIAlertActionStyle.Cancel, null));
				alert.AddAction(UIAlertAction.Create("Share Link", UIAlertActionStyle.Default, action => ShareLink(data)));
				alert.AddAction(UIAlertAction.Create("Download", UIAlertActionStyle.Default, action => DownloadFile(data)));
				alert.AddAction(UIAlertAction.Create("Delete", UIAlertActionStyle.Default, action => DeleteFile(data)));
				_controller.PresentViewController(alert, animated: true, completionHandler: null);
            }
            else
            {
                _controller.PerformSegue("SubfolderSegue", _controller);
            }
		    
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

		public CRCloudMetaData GetMetaData(int id)
		{
            return _metaData[id];
		}


        //Share Link
        public void ShareLink(CRCloudMetaData metaData)
        {
            string sharedLink = logic.ShareLinkForFileWithPath(_cloudStorage, metaData.Path);

            if (sharedLink != "")
            {
                UIPasteboard.General.String = sharedLink;
                helper.Alert("Shared Link Completed","Shared link is copied \nYou can paste it anywhere",_controller);
            }
        }

        //Download File

        public void DownloadFile(CRCloudMetaData metaData)
        {
			new System.Threading.Thread(new System.Threading.ThreadStart(() =>
				{
					InvokeOnMainThread(() =>
					{
						CloudStorageLogic cloudStorageLogic = new CloudStorageLogic();
                        NSInputStream inputStream = cloudStorageLogic.DownloadFileWithPath(_cloudStorage, metaData.Path);
						NSMutableData data = new NSMutableData();
						inputStream.Open();
                        
                        var int32Value = metaData.Size.Int32Value;
                        var intValue = metaData.Size.NIntValue;
                        
                        var buffer = new byte[1024];
                        
						while (inputStream.HasBytesAvailable())
						{
							var len = inputStream.Read(buffer, 1024);
							data.AppendBytes(buffer);
						}
                        
						if (inputStream.HasBytesAvailable() == false)
						{
							inputStream.Close();

                            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                            var bytes = data.Bytes;
                            string localFilename = metaData.Name;
							string localPath = Path.Combine(documents, localFilename);
                            
							byte[] managedArray = new byte[intValue];
							Marshal.Copy(bytes, managedArray, 0, int32Value);
                            
							File.WriteAllBytes(localPath, managedArray);
                            
                            helper.Alert("Download Completed", "File downloaded and saved to file sharing", _controller);
                            
						}
					});
				})).Start();

        }

        //Delete File
        public void DeleteFile(CRCloudMetaData metaData)
        {
            logic.DeleteFileWithPath(_cloudStorage, metaData.Path);
            _controller.GetRootFilesFolders();

            if (!helper.isFolder(metaData))
            {
                helper.Alert("Delete Completed", "File deleted", _controller);
            }
            else
            {
                helper.Alert("Delete Completed", "Folder deleted", _controller);
            }

        }
    }
}
