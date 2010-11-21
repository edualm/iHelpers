//
//  MEXMultitasking.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "iHelpers.h"
#import "MEXMultitasking.h"

@implementation MEXMultitasking

+ (BOOL)multitaskingSupported {
	NSString *minSysVer = @"4.0";
	NSString *currSysVer = [[UIDevice currentDevice] systemVersion];
	
	if ([MEXComparision compareVersion:currSysVer withVersion:minSysVer] == NSOrderedAscending)
		return NO;
		
	return YES;
}

- (void)setNotificationForDate:(NSDate *)date withString:(NSString *)alertBody withSound:(NSString *)soundName withRepeatInterval:(int)repeatInterval cancellingOtherNotifications:(BOOL)boolean {
	UIApplication *app = [UIApplication sharedApplication];
	NSArray *notifications = [app scheduledLocalNotifications];
	
	if ([notifications count] > 0 && boolean)
        [app cancelAllLocalNotifications];
	
    UILocalNotification *notification = [[[UILocalNotification alloc] init] autorelease];
    if (notification) {
        notification.fireDate = date;
        notification.timeZone = [NSTimeZone defaultTimeZone];
        notification.repeatInterval = repeatInterval;
        notification.soundName = soundName;
        notification.alertBody = alertBody;
		
        [app scheduleLocalNotification:notification];
    }
}

- (BOOL)longTaskEnabled {
	return longTaskEnabled;
}

- (void)setLongTaskEnabled:(BOOL)status {
	if (status) {
		UIDevice *device = [UIDevice currentDevice];
		
		if ([device respondsToSelector:@selector(isMultitaskingSupported)]) {
			BOOL backgroundSupported = device.multitaskingSupported;
			if (backgroundSupported) {
				[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(backgrounded) name:UIApplicationDidEnterBackgroundNotification object:nil];
				[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(foregrounded) name:UIApplicationWillEnterForegroundNotification object:nil];
			}
		}
		
		longTaskEnabled = YES;
	} else {
		[[NSNotificationCenter defaultCenter] removeObserver:self];
		longTaskEnabled = NO;
	}
}

- (void)backgrounded {	
	if (task == UIBackgroundTaskInvalid)
		task = [[UIApplication sharedApplication] beginBackgroundTaskWithExpirationHandler:^{ [self backgroundTaskExpired]; }];
}

- (void)foregrounded {
	UIApplication *app = [UIApplication sharedApplication];
	NSArray *notifications = [app scheduledLocalNotifications];
	
	if (task != UIBackgroundTaskInvalid) {
		[[UIApplication sharedApplication] endBackgroundTask:task];
		task = UIBackgroundTaskInvalid;
	}
	
	if ([notifications count] > 0)
        [app cancelAllLocalNotifications];
}

- (void)backgroundTaskExpired {
	[[UIApplication sharedApplication] endBackgroundTask:task];
	task = UIBackgroundTaskInvalid;
}

@end
