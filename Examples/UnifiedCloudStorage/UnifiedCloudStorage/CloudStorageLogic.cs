using System;
using UIKit;
using Foundation;
using CloudRailSI;


namespace UnifiedCloudStorage
{
    public class CloudStorageLogic
    {
        public CloudStorageLogic()
        {
        }

        //CloudRail CloudStorage Methods

        //Login - Login user, Explicitly triggers user authentication.
        public void Login(ICRCloudStorageProtocol cloudStorage)
        {
            try
            {
                cloudStorage.Login();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        //Logout - Logout user, Revokes the current authentication.
        public void Logout(ICRCloudStorageProtocol cloudStorage)
        {
            try
            {
                cloudStorage.Logout();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        //Get User Login - Returns he unique user login
        public string GetUserLogin(ICRCloudStorageProtocol cloudStorage)
        {
            try
            {
                return cloudStorage.GetUserLogin();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return "";
            }
        }

        //Get User Name - Returns the username
        public string GetUserName(ICRCloudStorageProtocol cloudStorage)
        {
            try
            {
                return cloudStorage.GetUserName();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return "";
            }
        }

        //Children Of Folder With Path - Returns a list of metadata object for the children of a folder.
        public CRCloudMetaData[] ChildrenOfFolderWithPath(ICRCloudStorageProtocol cloudStorage, string path)
        {
            try
            {
                CRCloudMetaData[] array = NSArray.FromArray<CRCloudMetaData>(cloudStorage.ChildrenOfFolderWithPath(path));
                return array;
            }
            catch (Exception e)
            {
                // Console.WriteLine(e.Message);
                CRCloudMetaData[] metaData = new CRCloudMetaData[] { };
                return metaData;
            }
        }

        //Share Link For File With Path - Creates a link to a file or folder that allows to share it with others.
        public string ShareLinkForFileWithPath(ICRCloudStorageProtocol cloudStorage, string path)
        {
            try
            {
                return cloudStorage.ShareLinkForFileWithPath(path);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return "";
            }
        }

        //Delete File With Path - Deletes a file or folder.
        public void DeleteFileWithPath(ICRCloudStorageProtocol cloudStorage, string path)
        {
            try
            {
                cloudStorage.DeleteFileWithPath(path);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        //Upload File To Path - Uploads a file to the specified location. Can either overwrite the existing file or will fail if the file already exists.
        public void UploadFileToPath(ICRCloudStorageProtocol cloudStorage, string path, NSInputStream inputSteam, int size, bool overwrite)
        {
            try
            {
                cloudStorage.UploadFileToPath(path, inputSteam, size, overwrite);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        //Download File With Path - Downloads a file. Returns a stream for maximum flexibility.
        public NSInputStream DownloadFileWithPath(ICRCloudStorageProtocol cloudStorage, string path)
        {
            try
            {
                return cloudStorage.DownloadFileWithPath(path);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }

        //Get Space Allocation - Returns metadata on the usage of the users storage volume.
        public CRSpaceAllocation GetSpaceAllocation(ICRCloudStorageProtocol cloudStorage)
        {
            try
            {
                return new CRSpaceAllocation();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return new CRSpaceAllocation();
            }
        }

        //File Exists At Path - Returns if there is a file or folder at the specified folder.
        public bool FileExistsAtPath(ICRCloudStorageProtocol cloudStorage, string path)
        {
            try
            {
                return cloudStorage.FileExistsAtPath(path);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return false;
            }
        }

        //Thumbnail Of File With Path - Returns a thumbnail of the specified file. This is inteded for image files but also works for others for some services.
        public NSInputStream ThumbnailOfFileWithPath(ICRCloudStorageProtocol cloudStorage, string path)
        {
            try
            {
                return cloudStorage.ThumbnailOfFileWithPath(path);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }

        //Create Folder With Path - Creates a new empty folder at the specified location.
        public void CreateFolderWithPath(ICRCloudStorageProtocol cloudStorage, string path)
        {
            try
            {
                cloudStorage.CreateFolderWithPath(path);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        //Copy File From Path - Copies a file or a folder to the new location.
        public void CopyFileFromPath(ICRCloudStorageProtocol cloudStorage, string path, string destination)
        {
            try
            {
                cloudStorage.CopyFileFromPath(path, destination);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        //Metadata Of File With Path - Returns a metadata object for a file or a folder.
        public CRCloudMetaData MetadataOfFileWithPath(ICRCloudStorageProtocol cloudStorage, string path)
        {
            try
            {
                return cloudStorage.MetadataOfFileWithPath(path);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return new CRCloudMetaData();
            }
        }

        //Search With Query - Returns a list of files and folders that match the provided search query.
        public CRCloudMetaData[] SearchWithQuery(ICRCloudStorageProtocol cloudStorage, string query)
        {
            try
            {
                CRCloudMetaData[] array = NSArray.FromArray<CRCloudMetaData>(cloudStorage.SearchWithQuery(query));
                return array;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                CRCloudMetaData[] metaData = new CRCloudMetaData[] { };
                return metaData;
            }
        }
	}
}
