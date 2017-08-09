// WARNING
//
// This file has been generated automatically by Visual Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

namespace UnifiedSocialProfile
{
    [Register ("ProfileViewController")]
    partial class ProfileViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView imageView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel labelDateOfBirth { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel labelDescription { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel labelId { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel labelLocale { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel labelMail { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel labelName { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (imageView != null) {
                imageView.Dispose ();
                imageView = null;
            }

            if (labelDateOfBirth != null) {
                labelDateOfBirth.Dispose ();
                labelDateOfBirth = null;
            }

            if (labelDescription != null) {
                labelDescription.Dispose ();
                labelDescription = null;
            }

            if (labelId != null) {
                labelId.Dispose ();
                labelId = null;
            }

            if (labelLocale != null) {
                labelLocale.Dispose ();
                labelLocale = null;
            }

            if (labelMail != null) {
                labelMail.Dispose ();
                labelMail = null;
            }

            if (labelName != null) {
                labelName.Dispose ();
                labelName = null;
            }
        }
    }
}