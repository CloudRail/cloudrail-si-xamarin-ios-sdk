using System;

using UIKit;

using CloudRailSI;

namespace UnifiedSocialProfile
{
    public partial class ProfileViewController : UIViewController
    {
        public int servicePosition;
        private ICRProfileProtocol service;
        public ProfileViewController() : base("ProfileViewController", null)
        {
        }

        protected ProfileViewController(IntPtr handle) : base(handle)
        {
			// Note: this .ctor should not contain any initialization logic.
		}

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            // Perform any additional setup after loading the view, typically from a nib.

            switch(servicePosition) {
				case 0:
					service = new CRFacebook("439557219752767", "7265db555fbf26606870451605e1ae37");
					break;
				case 1:
					service = new CRGitHub("ff2f6d88dd8a49366e30", "eeafe874a8b80599a09b5195022583fbda4ca2ad");
					break;
				case 2:
					service = new CRGooglePlus("141870010879-td4fdoobrsm6ecki2kvveki6kdauu4su.apps.googleusercontent.com", "", "com.cloudrail.unifiedsocialprofile:/oauth2redirect", "someState");
					((CRGooglePlus)service).UseAdvancedAuthentication();
					break;
				case 3:
					service = new CRHeroku("d81a8071-ab2b-4a8b-8385-a83d70ed6095", "ece9f5b1-c977-4d85-b6fa-c0403cdcbdff");
					break;
				case 4:
					service = new CRInstagram("d714c3c872cb443e975d874922e66fcc", "ead73573c11c4a9e831460f0ff3bf164");
					break;
				case 5:
					service = new CRLinkedIn("[LinkedIn Client Identifier]", "[LinkedIn Client Secret]");
					break;
				case 6:
					service = new CRProductHunt("9e79858debc14d0aab52bcad4430cbea06645e6df43986d3fe65fa9e4a46db47", "c04c57684eaf498eda439ed077270b09ea3a34218b283c9a4a6fb8a6bc24e88f");
					break;
				case 7:
					service = new CRSlack("[Slack Client Identifier]", "[Slack Client Secret]");
					break;
				case 8:
					service = new CRTwitter("FW6M3WmjhyiT2AYsohDZHGDTw", "1Ts5gOmPzXUgeckMDPV0dSEuY51L77cJCYBfftQFu6kI9kv2dp");
					break;
				case 9:
					service = new CRMicrosoftLive("[Windows Live Client Identifier]", "[Windows Live Client Secret]");
					break;
				case 10:
					service = new CRYahoo("[Yahoo Client Identifier]", "[Yahoo Client Secret]");
					break;
            }

            new System.Threading.Thread(new System.Threading.ThreadStart(() =>
            {
                // run in background
                service.Login();
                String name = service.GetFullName();
                String mail = service.GetEmail();
                CRDateOfBirth dob = service.GetDateOfBirth();
                String birthDate = dob != null ? dob.Day + "." + dob.Month + "." + dob.Year : "";
                String description = service.GetProfileDescription();
                String locale = service.GetLocale();
				String id = service.GetIdentifier();
				String imageUrlString = service.GetPictureURL();
				InvokeOnMainThread(() =>
				{
                    // manipulate UI controls
                    labelName.Text = name;
                    labelMail.Text = mail;
                    labelDateOfBirth.Text = birthDate;
                    labelDescription.Text = description;
                    labelLocale.Text = locale;
                    labelId.Text = id;

                    if (imageUrlString != null) {
						Foundation.NSUrl imageUrl = new Foundation.NSUrl(imageUrlString);
						Foundation.NSData imageData = Foundation.NSData.FromUrl(imageUrl);
						UIImage image = new UIImage(imageData);

						imageView.Image = image;
                    }
			    });
            })).Start();
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
    }
}

