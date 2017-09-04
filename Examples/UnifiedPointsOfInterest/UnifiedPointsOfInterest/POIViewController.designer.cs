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

namespace UnifiedPointsOfInterest
{
    [Register ("POIViewController")]
    partial class POIViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UISegmentedControl serviceSelect { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (serviceSelect != null) {
                serviceSelect.Dispose ();
                serviceSelect = null;
            }
        }
    }
}