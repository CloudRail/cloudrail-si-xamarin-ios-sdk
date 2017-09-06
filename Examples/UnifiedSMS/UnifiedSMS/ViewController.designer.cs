// WARNING
//
// This file has been generated automatically by Visual Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using Foundation;
using System;
using System.CodeDom.Compiler;

namespace UnifiedSMS
{
    [Register ("ViewController")]
    partial class ViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton sendButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UISegmentedControl serviceSelect { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField textFieldFrom { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField textFieldTo { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (sendButton != null) {
                sendButton.Dispose ();
                sendButton = null;
            }

            if (serviceSelect != null) {
                serviceSelect.Dispose ();
                serviceSelect = null;
            }

            if (textFieldFrom != null) {
                textFieldFrom.Dispose ();
                textFieldFrom = null;
            }

            if (textFieldTo != null) {
                textFieldTo.Dispose ();
                textFieldTo = null;
            }
        }
    }
}