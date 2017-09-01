[Click for Xamarin.Android Version](https://github.com/CloudRail/cloudrail-si-xamarin-android-sdk)
<p align="center">
<img width="200px" src="http://cloudrail.github.io/img/cloudrail_logo_github.png"/>
</p>

# CloudRail SI for Xamarin iOS
Integrate Multiple Services With Just One API

<p align="center">
<img width="300px" src="http://cloudrail.github.io/img/cloudrail_si_github.png"/>
</p>

CloudRail is an API integration solution which abstracts multiple APIs from different providers into a single and universal interface.

**Current Interfaces:**
<p align="center">
<img width="800px" src="http://cloudrail.github.io/img/available_interfaces_v2.png"/>
</p>
---

Full documentation can be found at our [website](https://cloudrail.com/integrations).

Learn more about CloudRail on https://cloudrail.com

---
---

With CloudRail, you can easily integrate external APIs into your application. 
CloudRail provides abstracted interfaces that take several services and then exposes a developer-friendly API that uses common functions between all providers. 
This means that, for example, Upload() works in exactly the same way for Dropbox as it does for Google Drive, OneDrive, and other Cloud Storage Services, and GetEmail() works similarly the same way across all social networks.

## Downloand and Basic setup
Just add download and the DLL `cloudrail-si-xamarin-ios-sdk.dll` file to your project reference
In the Project Navigator, open the source file of your application delegate. Add the import statement at the top of the file, then add the following call to CloudRail in the didFinishLaunching or didFinishLaunchingWithOptions method of your app delegate:
```csharp
using CloudRailSI;

CloudRail.AppKey = "{Your_License_Key}";
```
[Get a free license key here](https://cloudrail.com/signup)

---

## Current Interfaces:
Interface | Included Services
--- | ---
Cloud Storage | Dropbox, Google Drive, OneDrive, Box, Egnyte, OneDrive Business
Business Cloud Storage | Amazon S3, Microsoft Azure, Rackspace, Backblaze
Social Profiles | Facebook, GitHub, Google+, LinkedIn, Slack, Twitter, Windows Live, Yahoo, Instagram, Heroku
Social Interaction | Facebook, Twitter
Payment | PayPal, Stripe
Email | Maljet, Sendgrid
SMS | Twilio, Nexmo
Point of Interest | Google Places, Foursquare, Yelp
Video | Youtube, Twitch, Vimeo

---
### Cloud Storage Interface:

* Dropbox
* Box
* Google Drive
* Microsoft OneDrive
* Egnyte
* OneDrive Business

#### Features:

* Download files from Cloud Storage.
* Upload files to Cloud Storage.
* Get Meta Data of files, folders and perform all standard operations (copy, move, etc) with them.
* Retrieve user and quota information.
* Generate share links for files and folders.

#### Code Sample

[Full Documentation](https://cloudrail.com/integrations/interfaces/CloudStorage;platformId=XamarinIOS)
```csharp
using CloudRailSI;

CloudRail.AppKey = "{Your_License_Key}";


ICRCloudStorageProtocol> service;

// Google Drive
// CRGoogleDrive drive = new CRGoogleDrive("[clientIdentifier]", "", "[redirectUri]", "[state]");
// drive.UseAdvancedAuthentication();
// service = drive

// service = new CRBox("[clientIdentifier]", "[clientSecret]");
// service = new CROneDrive("[clientIdentifier]", "[clientSecret]");

service = new CRDropbox("[clientIdentifier]", "[clientSecret]");


new System.Threading.Thread(new System.Threading.ThreadStart(() =>
{
	try
	{
            NSInputStream object = service.DownloadFileWithPath:@"/mudkip.jpg"];
	}
	catch (Exception e)
	{
	    Console.WriteLine(e.Message);
	}

})).Start();

//READ FROM STREAM
```

---
### Business/Bucket Cloud Storage Interface:

* Amazon Web Services S3
* Microsoft Azure
* Rackspace
* Backblaze

#### Features

* Create, delete and list buckets
* Upload files
* Download files
* List files in a bucket and delete files
* Get file metadata (last modified, size, etc.)


#### Code Sample
[Full Documentation](https://cloudrail.com/integrations/interfaces/BusinessCloudStorage;platformId=XamarinIOS)

```csharp
using CloudRailSI;

CloudRail.AppKey = "{Your_License_Key}";

ICRBusinessCloudStorageProtocol service;

// service = new CRMicrosoftAzure("[accountName]", "[accessKey]");
// service = new CRRackspace("[username]", "[apiKey]", "[region]");
// service = new CRBackblaze("[accountId]", "[appKey]");
// service = new CRGoogleCloudPlatform("[clientEmail]", "[privateKey]", "[projectId]");

service = new AmazonS3("[accessKeyId]", "[secretAccessKey]", "[region]");

CRBucket bucket = new CRBucket();
bucket.Name = "bucket_name";
bucket.Identifier = "bucket_id";
NSData data = //data source;
var len = (int)data.Length
NSInputStream inputStream = new NSInputStream(data)

new System.Threading.Thread(new System.Threading.ThreadStart(() =>
{
	try
	{
           service.UploadFileToBucket(bucket,"file_name",inputStream,len);
	}
	catch (Exception e)
	{
	   Console.WriteLine(e.Message);
	}

})).Start();
```

---
### Social Media Profiles Interface:

* Facebook
* Github
* Google Plus
* LinkedIn
* Slack
* Twitter
* Windows Live
* Yahoo
* Instagram
* Heroku

#### Features

* Get profile information, including full names, emails, genders, date of birth, and locales.
* Retrieve profile pictures.
* Login using the Social Network.

#### Code Sample 
[Full Documentation](https://cloudrail.com/integrations/interfaces/Profile;platformId=XamarinIOS)

```csharp
using CloudRailSI;

CloudRail.AppKey = "{Your_License_Key}";

ICRProfileProtocol service;

// Google Plus:
// CRGooglePlus gPlus = new CRGooglePlus("[clientIdentifier]", "", "[redirectUri]", "[state]");
// gPlus.UseAdvancedAuthentication();
// service = gPlus;


// service = new CRGitHub("[clientIdentifier]", "[clientSecret]");
// service = new CRSlack("[clientIdentifier]", "[clientSecret]");
// service = new CRInstagram("[clientIdentifier]", "[clientSecret]");
// ...

service = new CRFacebook("[clientIdentifier]", "[clientSecret]");

new System.Threading.Thread(new System.Threading.ThreadStart(() =>
{
    try
    {
       string email = service.GetEmail();
       string fullname = service.GetFullName();
    }
    catch (Exception e)
    {
        Console.WriteLine(e.Message);
    }

})).Start();
```

---

### Social Media Interaction Interface:

* Facebook
* Twitter

#### Features

* Get a list of connections.
* Make a post for the user.


#### Code Sample 
[Full Documentation](https://cloudrail.com/integrations/interfaces/Social;platformId=XamarinIOS)

```csharp
using CloudRailSI;

CloudRail.AppKey = "{Your_License_Key}";

ICRSocialProtocol service;

// service = new CRTwitter("[clientID]", "[clientSecret]");
// service = new CRFacebook("[pageName]", "[clientID]", "[clientSecret]");
service = new CRFacebook("[clientID]", "[clientSecret]");

new System.Threading.Thread(new System.Threading.ThreadStart(() =>
{
	try
	{
           service.PostUpdateWithContent("Using Cloudrail sdk!");
	}
	catch (Exception e)
	{
	   Console.WriteLine(e.Message);
	}

})).Start();
```
---

### Payment Interface:

* PayPal
* Stripe

#### Features Interface

* Perform charges
* Refund previously made charges
* Manage subscriptions

#### Code Sample
[Full Documentation](https://cloudrail.com/integrations/interfaces/Payment;platformId=XamarinIOS)

```csharp
using CloudRailSI;

CloudRail.AppKey = "{Your_License_Key}";

ICRPaymentProtocol service;

// service = new CRPayPal(true, "[clientIdentifier]", "[clientSecret]");

service = new CRStripe("[secretKey]");

new System.Threading.Thread(new System.Threading.ThreadStart(() =>
{
	try
	{
           CRSubscriptionPlan subPlan = service.CreateSubscriptionPlanWithName("Plan name",2000,"USD","description","day",7);
	}
	catch (Exception e)
	{
	   Console.WriteLine(e.Message);
	}

})).Start();

```
---

### Email Interface:

* Mailjet
* Sendgrid
* Gmail

#### Features

* Send Email

#### Code Sample
[Full Documentation](https://cloudrail.com/integrations/interfaces/Email;platformId=XamarinIOS)

```csharp
using CloudRailSI;

CloudRail.AppKey = "{Your_License_Key}";

ICREmailProtocol service;

// service = new CRMailJet("[clientIdentifier]", "[clientSecret]");
// service = new CRGMail("[GMail Client Identifier]","","com.cloudrail.example:/auth","someState");

service = new CRSendGrid("API Key");

new System.Threading.Thread(new System.Threading.ThreadStart(() =>
{
	try
	{
       	   NSMutableArray<NSString> toAddresses = new NSMutableArray<NSString>();
           toAddresses.Add(new NSString("foo@gmail.com"));
           toAddresses.Add(new NSString("bar@gmail.com"));
	   
	   CRAttachment attachImage = new CRAttachment(content,"image/jpg","MyFile.jpg"); //InputStream, MimeType,FileName
	   
	   NSMutableArray<CRAttachment> attachments = new NSMutableArray<CRAttachment>();
	   attachments.Add(attachImage);

       	   service.SendEmail("cloudrail@cloudrail.com", @"Bob", toAddresses, "Mailjet and SendGrid", "The Mailjet and Sendgrid is on cloudrail now!!!","", null, null, attachments);
	}
	catch (Exception e)
	{
	   Console.WriteLine(e.Message);
	}

})).Start();

```

---

### SMS Interface:

* Twilio
* Nexmo
* Twizo

#### Features

* Send SMS

#### Code Sample
[Full Documentation](https://cloudrail.com/integrations/interfaces/SMS;platformId=XamarinIOS)

```csharp
using CloudRailSI;

CloudRail.AppKey = "{Your_License_Key}";

ICRSMSProtocol service;

// service = new CRNexmo("[clientIdentifier]", "[clientSecret]");
service = new CRTwilio("[clientIdentifier]", "[clientSecret]");

new System.Threading.Thread(new System.Threading.ThreadStart(() =>
{
    try
    {
       service.SendSMS("CloudRail", "+4912345678", "Hello from CloudRail");
    }
    catch (Exception e)
    {
        Console.WriteLine(e.Message);
    }

})).Start();
```
---

### Points of Interest Interface:

* Google Places
* Foursquare
* Yelp

#### Features

* Get a list of POIs nearby
* Filter by categories or search term

#### Code Example
[Full Documentation](https://cloudrail.com/integrations/interfaces/PointsOfInterest;platformId=XamarinIOS)

```csharp
using CloudRailSI;

CloudRail.AppKey = "{Your_License_Key}";

ICRPointsOfInterestProtocol service;

// service = new CRYelp("[consumerKey]", "[consumerSecret]", "[token]", "[tokenSecret]");
// service = new CRGooglePlaces("[apiKey]");

service = new CRFoursquare("[clientID]", "[clientSecret]");

new System.Threading.Thread(new System.Threading.ThreadStart(() =>
{
	try
	{
      	   NSMutableArray arrayPOI = service.NearbyPoisWithLatitude(9.483927, 8.473272, 300, "", null);
	   CRPOI[] pois = NSArray.FromArray<CRPOI>(arrayPOI);
	}
	catch (Exception e)
	{
	   Console.WriteLine(e.Message);
	}

})).Start();

```
---

### Video Interface:

* Youtube
* Twitch
* Vimeo

#### Features

* Search for videos
* Upload videos
* Get a list of videos for a channel
* Get channel details
* Get your own channel details
* Get video details 

#### Code Example
[Full Documentation](https://cloudrail.com/integrations/interfaces/Video;platformId=XamarinIOS)

```csharp
using CloudRailSI;

CloudRail.AppKey = "{Your_License_Key}";

ICRVideoProtocol service;

// service = new CRTwitch("[Twitch Client Identifier]", "[Twitch Client Secret]");
// service = new CRVimeo("[Vimeo Client Identifier]", "[Vimeo Client Secret]");

service = new CRYouTube("[YouTube Client Identifier]", "", "com.cloudrail.example:/auth", "someState");
service.UseAdvancedAuthentication();

new System.Threading.Thread(new System.Threading.ThreadStart(() =>
{
	try
	{
      	   CRVideoMetaData[] result = NSArray.FromArray<CRVideoMetaData>(service.SearchVideosWithQuery("Game of Thrones",0,20));  //Query, Offset, Limit
	   
	   //CRVideoMetaData result = service.UploadVideoWithTitle("HowTo: Setup CloudRail","Video about Setting up CloudRail", NSInputStream, 1448576, "UCnrFDdA2KAItbRzm2a3I_OA", "video/mp4"); // Title, Description, Stream (data), Size, ChannelID (optional for Youtube) and Video Mime type
	  
	   
	}
	catch (Exception e)
	{
	   Console.WriteLine(e.Message);
	}

})).Start();

```
---

More interfaces are coming soon.

## Advantages of Using CloudRail

* Consistent Interfaces: As functions work the same across all services, you can perform tasks between services simply.

* Easy Authentication: CloudRail includes easy ways to authenticate, to remove one of the biggest hassles of coding for external APIs.

* Switch services instantly: One line of code is needed to set up the service you are using. Changing which service is as simple as changing the name to the one you wish to use.

* Simple Documentation: There is no searching around Stack Overflow for the answer. The CloudRail documentation at https://cloudrail.com/integrations is regularly updated, clean, and simple to use.

* No Maintenance Times: The CloudRail Libraries are updated when a provider changes their API.

* Direct Data: Everything happens directly in the Library. No data ever passes a CloudRail server.

## Sample Applications

If you don't know how to start or just want to have a look at how to use our SDK in a real use case, we created a few sample application which you can try out:

* Sample using the CloudStorage interface: [UnifiedCloudStorage](https://github.com/CloudRail/cloudrail-si-xamarin-ios-sdk/tree/master/Examples/UnifiedCloudStorage)

## License Key

CloudRail provides a developer portal which offers usage insights for the SDKs and allows you to generate license keys.

It's free to sign up and generate a key.

Head over to https://cloudrail.com/signup

## Pricing

Learn more about our pricing on https://cloudrail.com/pricing

## Other Platforms

CloudRail is also available for other platforms like iOS, Java and NodeJS. You can find all libraries on https://cloudrail.com

## Questions?

Get in touch at any time by emailing us: support@cloudrail.com

or

Tag a question with cloudrail on [StackOverflow](http://stackoverflow.com/questions/tagged/cloudrail)
