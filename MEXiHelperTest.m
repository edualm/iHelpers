//
//  MEXiHelperTest.m
//  iHelpers
//
//  Created by Eduardo Almeida on 10/09/04.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MEXiHelperTest.h"
#import "UIActionSheet+iHelpers.h"

@implementation MEXiHelperTest

- (void)awakeFromNib {
	multiTasking = [MEXMultitasking new];
	cracking = [MEXCracking new];
	
	[window addSubview:viewController.view];
	[window makeKeyAndVisible];
	
	[cracking ifCrackedCrashAfterSeconds:5];
	
	NSLog(@"iHelpers by MegaEduX. Availavable freely at http://github.com/MegaEduX/iHelpers");
	
	NSLog(@"This is running on %@", [MEXOSTools deviceTypeDistinguishingSimulator:YES]);
}
	
- (IBAction)checkCrack {
	if ([MEXCracking applicationIsCracked]) {
		NSLog(@"Application is cracked.");
	} else {
		NSLog(@"Application isn't cracked.");
	}
}

- (IBAction)randomNumber {
	NSLog(@"Random number up to 12: %d", [MEXRandom randomNumberUpTo:12]);
	NSLog(@"Random number from 1250 to 1369: %d", [MEXRandom randomNumberFrom:1250 to:1369]);
}

- (IBAction)enableDisableMultitasking {
	if ([multiTasking longTaskEnabled]) {
		[multiTasking setLongTaskEnabled:NO];
		NSLog(@"Multitasking disabled.");
	} else {
		[multiTasking setLongTaskEnabled:YES];
		NSLog(@"Multitasking enabled.");
	}
}

- (IBAction)sendLocalNotification {
	[multiTasking setNotificationForDate:[NSDate dateWithTimeIntervalSinceNow:10] 
							  withString:@"This is a test notification." 
							   withSound:nil 
					  withRepeatInterval:0
			cancellingOtherNotifications:YES];
	NSLog(@"Please press the home button and wait.");
}

- (IBAction)displayAlert {
	[UIAlertView displayAlertWithTitle:@"Test Alert" message:@"Test Message" delegate:self cancelButton:@"Button" otherButton:@"Button", nil];
}

- (IBAction)displayActionSheet {
	[UIActionSheet displayActionSheetInView:view style:UIActionSheetStyleDefault message:@"This is a test action sheet." delegate:self cancelButton:@"Okay." destructiveButton:@"Doh!" otherButton:nil];
}
@end
