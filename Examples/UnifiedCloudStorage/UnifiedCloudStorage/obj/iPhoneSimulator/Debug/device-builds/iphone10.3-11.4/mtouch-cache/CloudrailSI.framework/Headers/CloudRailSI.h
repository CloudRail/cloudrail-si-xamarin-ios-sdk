//
//  CloudRailSI.h
//  CloudRailSI
//
//  Created by Felipe Cesar on 20/04/16.
//  Copyright © 2016 CloudRail. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for CloudRailSI.
FOUNDATION_EXPORT double CloudRailSIVersionNumber;

//! Project version string for CloudRailSI.
FOUNDATION_EXPORT const unsigned char CloudRailSIString[];

// To use the framework just do #import "CloudRailSI.h"
#import "CRCloudRail.h"

#pragma mark - CloudStorage
#import "CRDropbox.h"
#import "CRBox.h"
#import "CRGoogleDrive.h"
#import "CROneDrive.h"
#import "CREgnyte.h"
#import "CROneDriveBusiness.h"
#import "CRMicrosoft.h"
#import "CRPCloud.h"

#pragma mark - BusinessCloudStorage
#import "CRAmazonS3.h"
#import "CRBackblaze.h"
#import "CRRackspace.h"
#import "CRMicrosoftAzure.h"
#import "CRGoogleCloudPlatform.h"

#pragma mark - ProfileInterface
#import "CRFacebook.h"
#import "CRGitHub.h"
#import "CRGooglePlus.h"
#import "CRLinkedIn.h"
#import "CRMicrosoftLive.h"
#import "CRSlack.h"
#import "CRTwitter.h"
#import "CRYahoo.h"
#import "CRInstagram.h"
#import "CRHeroku.h"
#import "CRFacebookPage.h"
#import "CRProductHunt.h"


#pragma mark - PointsOfInterestInterface
#import "CRFoursquare.h"
#import "CRGooglePlaces.h"
#import "CRYelp.h"


#pragma mark - PaymentInterface
#import "CRPayPal.h"
#import "CRStripe.h"

#pragma mark - SMSInterface
#import "CRNexmo.h"
#import "CRTwilio.h"
#import "CRTwizo.h"

#pragma mark - Email
#import "CRSendGrid.h"
#import "CRMailJet.h"
#import "CRGMail.h"

#pragma mark - Video
#import "CRYouTube.h"
#import "CRTwitch.h"
#import "CRVimeo.h"

#pragma mark - Messaging
#import "CRFacebookMessenger.h"
#import "CRLine.h"
#import "CRTelegram.h"
#import "CRViber.h"
#import "CRSlackBot.h"

#pragma mark - Protocols
#import "CRCloudStorageProtocol.h"
#import "CRProfileProtocol.h"
#import "CRAuthenticatingProtocol.h"
#import "CRPersistableProtocol.h"
#import "CRPointsOfInterestProtocol.h"
#import "CRSMSProtocol.h"
#import "CREmailProtocol.h"
#import "CRPaymentProtocol.h"
#import "CRSocialProtocol.h"
#import "CRBusinessCloudStorageProtocol.h"
#import "CRAdvancedRequestSupporterProtocol.h"
#import "CRVideoProtocol.h"
#import "CRMessagingProtocol.h"

#pragma mark - ClourRail types
#import "CRAddress.h"
#import "CRCloudMetaData.h"
#import "CRDateOfBirth.h"
#import "CRLocation.h"
#import "CRSandboxObject.h"
#import "CRCharge.h"
#import "CRCreditCard.h"
#import "CRSubscription.h"
#import "CRSubscriptionPlan.h"
#import "CRRefund.h"
#import "CRSpaceAllocation.h"
#import "CRImageMetaData.h"
#import "CRBucket.h"
#import "CRBusinessFileMetaData.h"
#import "CRAdvancedRequestResponse.h"
#import "CRAdvancedRequestSpecification.h"
#import "CustomStream.h"
#import "CRVideoMetaData.h"
#import "CRChannelMetaData.h"
#import "CRMessage.h"
#import "CRMessagingAttachment.h"
#import "CRMessageItem.h"
#import "CRMessageButton.h"

#pragma mark - Helper Protocols
#import "CRAuthenticationDelegate.h"
#import "CRUploadProgressDelegate.h"

#pragma mark - Swift Helpers
#import "CRError.h"
#import "CRExceptionHandler.h"
