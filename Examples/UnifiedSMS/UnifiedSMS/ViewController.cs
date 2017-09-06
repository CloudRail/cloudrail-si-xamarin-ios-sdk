using System;
using UIKit;

using CloudRailSI;

namespace UnifiedSMS
{
    public partial class ViewController : UIViewController
    {
        ICRSMSProtocol service;
        protected ViewController(IntPtr handle) : base(handle)
        {
            // Note: this .ctor should not contain any initialization logic.
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            // Perform any additional setup after loading the view, typically from a nib.

            sendButton.TouchDown += (sender, e) => { sendSMS(); };
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }

		private void sendSMS()
		{
            String from = textFieldFrom.Text;
            String to = textFieldTo.Text;

			String serviceString = serviceSelect.TitleAt(serviceSelect.SelectedSegment);
			switch (serviceString)
			{
				case "Nexmo":
                    service = new CRNexmo(
                        "[Nexmo Client ID]",
                        "[Nexmo Client Secret]"
                    );
					break;
				case "Twilio":
					service = new CRTwilio(
						"[Twilio Client ID]",
						"[Twilio Client Secret]"
					);
					break;
				case "Twizo":
                    service = new CRTwizo(
						"[Twizo Key]"
					);
					break;
			}
			try
			{
                service.SendSMS(from, to, "CloudRail is awesome!");
			}
			catch (Exception e)
			{
				Console.WriteLine(e.Message);
			}
		}
    }
}
