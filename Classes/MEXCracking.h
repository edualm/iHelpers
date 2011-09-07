//
//  MEXCracking.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>

/** The class MEXCracking tries to put application crackers where they belong. */

@interface MEXCracking : NSObject {
	BOOL firstThisRun;
	BOOL shouldDoNow;
	BOOL shouldCrash;
}

/** Returns whether or not the application is cracked.
 * @return Returns YES if it is cracked, NO if not.
 */
+ (BOOL)applicationIsCracked;

/** If the application is cracked, it will start crashing after _appLaunches_.
 * @param appLaunches Crash after … launches.
 */
- (void)ifCrackedCrashAfterLaunches:(int)appLaunches;

/** If the application is cracked, it will start crashing after seconds.
 * @param seconds Crash after … seconds.
 */
- (void)ifCrackedCrashAfterSeconds:(double)seconds;

/** If the application is cracked, it will open an _url_ after _seconds_ and crash, or not.
 * @param url The URL to open.
 * @param seconds Crash after … seconds.
 * @param crashApp YES to crash the app, NO not to.
 */
- (void)ifCrackedOpenURL:(NSURL *)url afterSeconds:(double)seconds andCrash:(BOOL)crashApp;

/** If the application is cracked, it will open an _url_ after _appLaunches_ and crash, or not.
 * @param url The URL to open.
 * @param appLaunches Crash after … launches.
 * @param crashApp YES to crash the app, NO not to.
 */
- (void)ifCrackedOpenURL:(NSURL *)url afterLaunches:(int)appLaunches andCrash:(BOOL)crashApp;

/** If the application is cracked, it will display an alert and crash, or not.
 * @param title The title of the alert.
 * @param message The alert message.
 * @param buttonTitle Tht title of the alert button.
 * @param seconds Display the alert after … seconds.
 * @param crashApp YES to crash the app, NO not to.
 */
- (void)ifCrackedDisplayAlertWithTitle:(NSString *)title message:(NSString *)message button:(NSString *)buttonTitle afterSeconds:(double)seconds andCrash:(BOOL)crashApp;

/** If the application is cracked, it will display an alert and crash, or not.
 * @param title The title of the alert.
 * @param message The alert message.
 * @param buttonTitle Tht title of the alert button.
 * @param appLaunches Crash after … launches.
 * @param crashApp YES to crash the app, NO not to.
 */
- (void)ifCrackedDisplayAlertWithTitle:(NSString *)title message:(NSString *)message button:(NSString *)buttonTitle afterLaunches:(int)appLaunches andCrash:(BOOL)crashApp;

@end
