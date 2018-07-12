# Change Log

## [1.2.19](https://github.com/CloudRail/cloudrail-si-xamarin-android-sdk/tree/1.2.19) (2018-07-12)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.18...1.2.19)

* Advance Authentication issue fixed.

## [1.2.18](https://github.com/CloudRail/cloudrail-si-xamarin-android-sdk/tree/1.2.18) (2018-07-05)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.17...1.2.18)

* Added AuthenticatingDelegate
* Added UploadDidCancel method to UploadDelegate
* Minor Bug fixes

## [1.2.17](https://github.com/CloudRail/cloudrail-si-xamarin-android-sdk/tree/1.2.17) (2018-05-25)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.16...1.2.17)

* Critical bug fix: [Issue](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/issues/1) 

## [1.2.16](https://github.com/CloudRail/cloudrail-si-xamarin-android-sdk/tree/1.2.16) (2018-05-22)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.15...1.2.16)

* OneDriveBusiness: Fix missing url encoding of the client secret on refreshing tokens
* GoogleCloudPlatform: Add a missing internal function
* MicrosoftAzure: Fix an issue in the advanced request function

## [1.2.15](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.15) (2018-04-25)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.14...1.2.15)

* OneDrive: Attach missing state parameter to authentication url
* Facebook: Removed user_about_me scope which shows description.
* Google Cloud: Added object name encoding to google cloud.

## [1.2.14](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.14) (2018-04-11)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.13...1.2.14)

* Fixed bug in AppKey Set method

## [1.2.13](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.13) (2018-04-10)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.12...1.2.13)

* Fixed bug in Exists: method in GoogleDrive.
* Added AdvancedRequest feature in Yelp.
* Added new method ListFilesInBucketWithPrefix to BusinessCloudStorage interface.

## [1.2.12](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.12) (2018-03-28)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.11...1.2.12)

* Minor fix in AmazonS3, GoogleCloudPlatform, FacebookMessenger
* Fix in uploadFileWithContentModified for all CloudStorage Interfaces.
* Updated Yelp to use API v3.

## [1.2.11](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.11) (2018-02-28)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.10...1.2.11)

* Minor changes to OneDrive, OneDriveBusiness, GoogleDrive
* Fixed Unknown Issue caused by wrong allocation
* Fixed apostrophe issue in GoogleDrive
* Fixed Crash on OneDrive
* Updated CRDate formats

## [1.2.10](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.10) (2018-02-12)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.9...1.2.10)

* Add a new method to the CloudStorage interface that allows uploading files with a custom modified date
* Fix a missing Authorization header in getChildren and getChildrenPage of OneDrive
* Fix error handling in Dropbox
* Fix an issue with upload in PCloud

## [1.2.9](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.9) (2018-01-23)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.8...1.2.9)

* PCloud added as a new integration in the Cloud Storage interface
* Fixed Google Drive path issue (when it contains backslashes)

## [1.2.8](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.8) (2018-01-18)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.7...1.2.8)

* Fixed Issue where Google services throw exception before authentication

## [1.2.7](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.7) (2017-12-14)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.6...1.2.7)

* Cancel button fix webview (logging in again)
* Gmail attachment fix

## [1.2.6](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.6) (2017-11-30)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.5...1.2.6)

* Cancel button fix webview
* Hot fix - Connection
* Amazon S3 fix

## [1.2.5](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.5) (2017-11-23)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.4...1.2.5)

* Added missing files (messaging files)
* Fixed CloudStorage issues to limit files
* Added Category to POI

## [1.2.4](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.4) (2017-11-07)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.3...1.2.4)

* Added Advance Request to Messaging Services
* Added Send Caurosel Method to Messaging Interface
* Fixed the Done button on the WebView (Changed to WKWebView)

## [1.2.3](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.3) (2017-10-17)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/compare/1.2.1...1.2.3)

* Added New Messaging Interfaces (Facebook / Viber)
* Fixed Amazon S3 pagination issue
* Fixed for CloudStorage (OneDrive, Google Drive, Box and Dropbox)
* Fixed OneDrive Business

## [1.2.1](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.2.1) (2017-10-09)
[Full Changelog](https://github.com/CloudRail/cloudrail-si-ios-sdk/compare/1.2.1...1.0.0)

* Updated Messaging Interface
* Fixed timestamp issue
* Fixed missing constructor for OneDrive / Gmail

## [1.0.0](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/1.0.0) (2017-08-07)
- Initial release
