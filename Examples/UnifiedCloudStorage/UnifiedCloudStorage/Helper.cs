using System;
using UIKit;
using Foundation;
using CloudRailSI;

namespace UnifiedCloudStorage
{
    public class Helper
    {
        public Helper()
        {
        }

		//Get Image to display in TableView
		public UIImage GetImage(CRCloudMetaData metaData)
		{
            if (this.isFolder(metaData))
			{
				return UIImage.FromBundle("Folder");
			}
			else
			{
                if (this.IsImage(metaData))
                {
                    return UIImage.FromBundle("Picture");
                }
                else if (this.IsVideo(metaData))
                {
                    return UIImage.FromBundle("Video");
                }
                else
                {
                    return UIImage.FromBundle("DocFile");
                }
			}
		}

		//Check if CRCloudMetaData is a folder
		public Boolean isFolder(CRCloudMetaData metaData)
        {
			if (metaData.Folder.NUIntValue == 1)
			{
                return true;
			}
            return false;
        }

		//Check if CRCloudMetaData is an image
		public Boolean IsImage(CRCloudMetaData metaData)
        {
			try
			{
				string fileExtention = new Foundation.NSUrl(metaData.Name).PathExtension.ToLower();
				if (fileExtention == "jpg" || fileExtention == "jpeg" || fileExtention == "png")
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			catch (Exception e)
			{
				Console.WriteLine(e);
				return false;
			}
        }

		//Check if CRCloudMetaData is a video
		public Boolean IsVideo(CRCloudMetaData metaData)
		{
			try
			{
				string fileExtention = new Foundation.NSUrl(metaData.Name).PathExtension.ToLower();
				if (fileExtention == "mov" || fileExtention == "mp4" || fileExtention == "mkv" || fileExtention == "avi" || fileExtention == "wmv")
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			catch (Exception e)
			{
				Console.WriteLine(e);
				return false;
			}
		}

        //Default Alert View
        public void Alert(string title, string message, UIViewController controller)
        {
            var alert = UIAlertController.Create(title, message, UIAlertControllerStyle.Alert);
			alert.AddAction(UIAlertAction.Create("Ok", UIAlertActionStyle.Cancel, null));
			controller.PresentViewController(alert, animated: true, completionHandler: null);
        }

    }
}
