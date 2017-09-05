using System;
using UIKit;

using CloudRailSI;
using Foundation;

namespace UnifiedEmail
{
    public partial class ViewController : UIViewController
    {
        ICREmailProtocol service;

        protected ViewController(IntPtr handle) : base(handle)
        {
            // Note: this .ctor should not contain any initialization logic.
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            // Perform any additional setup after loading the view, typically from a nib.

            sendButton.TouchDown += (sender, e) => { sendMail(); };
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }

        private void sendMail() {
            String fromAddress = TextFieldFromAddress.Text;
            String fromName = TextFieldFromName.Text;
            NSMutableArray<NSString> toAddresses = new NSMutableArray<NSString>();
            toAddresses.Add(new NSString(TextFieldToAddress.Text));



            String serviceString = serviceSelect.TitleAt(serviceSelect.SelectedSegment);
            switch (serviceString) {
                case "Gmail":
                    service = new CRGMail(
                        "[Your GMail Client ID]",
                        "",
                        "com.cloudrail.UnifiedEmail:/oauth2redirect",
                        "someState"
                    );
                    ((CRGMail)service).UseAdvancedAuthentication();
                    break;
                case "Mailjet":
                    service = new CRMailJet(
                        "[Your MailJet Client ID]",
                        "[Your MailJet Client Secret]"
                    );
                    break;
                case "SendGrid":
                    service = new CRSendGrid(
                        "[Your SendGrid API Key]"
                    );
                    break;
            }
            try {

				service.SendEmail(
					fromAddress,
					fromName,
					toAddresses,
					"CloudRail is awesome!",
					"Go ahead and try it for yourself!",
					"",
					new NSMutableArray<NSString>(),
					new NSMutableArray<NSString>(),
					new NSMutableArray<NSObject>()
				);
            } catch (Exception e) {
                Console.WriteLine(e.Message);
            }
        }
    }
}
