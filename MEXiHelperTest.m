//
//  MEXiHelperTest.m
//  iHelpers
//
//  Created by Eduardo Almeida on 10/09/04.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MEXiHelperTest.h"


@implementation MEXiHelperTest

- (void)awakeFromNib {
	multiTasking = [MEXMultitasking new];
	alerts = [MEXAlerts new];
	cracking = [MEXCracking new];
	
	[window addSubview:viewController.view];
	[window makeKeyAndVisible];
	
	[cracking ifCrackedCrashAfterSeconds:5];
}
	
- (IBAction)checkCrack {
	if ([MEXCracking applicationIsCracked]) {
		NSLog(@"Application is cracked.");
	} else {
		NSLog(@"Application isn't cracked.");
	}
}

- (IBAction)enableDisableMultitasking {
	if ([multiTasking longTaskEnabled]) {
		[multiTasking setLongTaskEnabled:NO];
		NSLog(@"Multitasking disabled.");
	} else {
		[multiTasking setLongTaskEnabled:YES];
		NSLog(@"Multitasking disabled.");
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
	[alerts displayAlertWithTitle:@"Test Alert" message:@"Test Message" delegate:self cancelButton:@"Button" otherButton:@"Button", nil];
}

- (IBAction)displayActionSheet {
	[alerts displayActionSheetInView:view style:UIActionSheetStyleDefault message:@"This is a test action sheet." delegate:self cancelButton:@"Okay." destructiveButton:@"Doh!" otherButton:nil];
}
@end
