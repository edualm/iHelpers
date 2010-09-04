//
//  MEXiHelperTest.h
//  iHelpers
//
//  Created by Eduardo Almeida on 10/09/04.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iHelpers.h"

@interface MEXiHelperTest : NSObject {
	IBOutlet UIWindow *window;
	IBOutlet UIView *view;
	IBOutlet UIViewController *viewController;
	
	MEXMultitasking *multiTasking;
	MEXAlerts *alerts;
}

- (IBAction)checkCrack;
- (IBAction)enableDisableMultitasking;
- (IBAction)sendLocalNotification;
- (IBAction)displayAlert;
- (IBAction)displayActionSheet;

@end
