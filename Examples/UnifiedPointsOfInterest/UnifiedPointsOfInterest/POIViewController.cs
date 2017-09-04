using Foundation;
using System;
using UIKit;

using CloudRailSI;
using System.Collections.Generic;

namespace UnifiedPointsOfInterest
{
    public partial class POIViewController : UITableViewController
    {
        NSMutableArray<CRPOI> pois = new NSMutableArray<CRPOI>();
        ICRPointsOfInterestProtocol service;
        public POIViewController (IntPtr handle) : base (handle)
        {
        }

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();

            serviceSelect.ValueChanged += (sender, e) => { updatePOIs(); };
			updatePOIs();
		}

		public override void DidReceiveMemoryWarning()
		{
			base.DidReceiveMemoryWarning();
			// Release any cached data, images, etc that aren't in use.
		}

		public override nint NumberOfSections(UITableView tableView)
		{
			return 1;
		}

		public override nint RowsInSection(UITableView tableView, nint section)
		{
            return (System.nint)pois.Count;
		}

		public override UITableViewCell GetCell(UITableView tableView, Foundation.NSIndexPath indexPath)
		{
			UITableViewCell cell = tableView.DequeueReusableCell("Cell", indexPath);
            cell.TextLabel.Text = pois.GetItem<CRPOI>((System.nuint)indexPath.Row).Name;
			return cell;
		}

        private void updatePOIs() {
            String serviceTitle = serviceSelect.TitleAt(serviceSelect.SelectedSegment);
            switch (serviceTitle) {
				case "Foursquare":
					service = new CRGooglePlaces(
						"AIzaSyBO1nbR0ZaDct5po9vwXapteN7gsQkCEGQ"
					);
                    break;
				case "Google Places":
					service = new CRFoursquare(
						"CHP45LRN1001UWCO2TLU0USWMBXY2OFMAJSPRP5AJ0IBKNSC",
						"5VCXTROQNDHUP1TVUYIWNQZOINMMQDVBN2X5GPH5OSDXZSL4"
					);
                    break;
                case "Yelp":
					service = new CRYelp(
						"E5VQCILk9DATXtKziOGEzw",
						"k7yxfTytxbOha4cJllyPMMoq82QmNCuVONSKL3BQx1F9fRcietT1SQnj0xgNr594"
					);
                    break;
            }

			new System.Threading.Thread(new System.Threading.ThreadStart(() =>
            {
                // run in background

                double lat = 49.4871628;
                double lng = 8.4640606;


                NSMutableArray<NSString> categories = new NSMutableArray<NSString>();
                categories.Add(new NSString("restaurant"));

				try
				{
					NSMutableArray poiObjects = service.NearbyPoisWithLatitude(
						lat,
						lng,
						2000,
						"Pizza",
                        categories
					);

					pois = new NSMutableArray<CRPOI>();



					for (nuint i = 0; i < poiObjects.Count; i++)
					{
						System.Diagnostics.Debug.WriteLine("hello");
						pois.Add(poiObjects.GetItem<CRPOI>(i));
					}

					InvokeOnMainThread(() => {
						// run on UI thread

						System.Diagnostics.Debug.WriteLine("reloading data");
						System.Diagnostics.Debug.WriteLine("size = " + pois.Count);
						System.Diagnostics.Debug.WriteLine("size = " + poiObjects.Count);
						this.TableView.ReloadData();
					});
                } catch (Exception e) {
                    
                }
    		})).Start();
		}
    }
}