//
//  MEXMultitasking.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>


@interface MEXMultitasking : NSObject {
	UIBackgroundTaskIdentifier task;
	BOOL longTaskEnabled;
}

- (void)setNotificationForDate:(NSDate *)date withString:(NSString *)alertBody withSound:(NSString *)soundName withRepeatInterval:(int)seconds cancellingOtherNotifications:(BOOL)boolean;
- (void)backgrounded;
- (void)foregrounded;
- (void)backgroundTaskExpired;
- (BOOL)longTaskEnabled;
- (void)setLongTaskEnabled:(BOOL)status;
+ (BOOL)multitaskingSupported;

@end
