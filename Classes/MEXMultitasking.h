//
//  MEXMultitasking.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>

/** The class MEXMultitasking is a very, very useful class for everyone targeting iOS 4 and up..
 * It allows you, the developer, to implement long task multitasking in your app in just a few lines of code.
 * MEXMultitasking also includes local push notifications.
 */

@interface MEXMultitasking : NSObject {
	UIBackgroundTaskIdentifier task;
	BOOL longTaskEnabled;
}

/** Schedules a local notification. 
 * @param date Date to fire the notification.
 * @param alertBody The body of the notification.
 * @param soundName The name of the sound to play when the notification is fired, if any.
 * @param seconds The repeat interval of the notification. Set 0 for none.
 * @param boolean YES to cancel all other notifications when setting this one up.
 */
- (void)setNotificationForDate:(NSDate *)date withString:(NSString *)alertBody sound:(NSString *)soundName repeatInterval:(int)seconds cancellingOtherNotifications:(BOOL)boolean;
 
/** Returns whether or not long task multitasking is enabled.
 * @return Returns YES if it is enabled, NO if not.
 */
- (BOOL)longTaskEnabled;

/** Enables or disables the long task multitasking.
 * @param status YES to enable, NO to disable.
 */
- (void)setLongTaskEnabled:(BOOL)status;

/** Returns whether or not the device supports multitasking.
 * @return Returns YES if it's supported, NO if not.
 */
+ (BOOL)multitaskingSupported;

/** Returns whether or not the device supports local notifications.
 * @return Returns YES if it's supported, NO if not.
 */
+ (BOOL)localPushSupported;

@end
