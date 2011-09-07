//
//  MEXGameCenter.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>
#import <GameKit/GameKit.h>

/** The class MEXGameCenter is a very, very useful class for game developers.
 * It allows you, the developer, to fully implement Game Center in your app in just a few lines of code, complete with error fallback.
 */

@interface MEXGameCenter : NSObject {
	int timesTried;
	BOOL gameCenterEnabled;
}

/** Singleton for the class MEXGameCenter.
 * @return The shared class.
 */
+ (MEXGameCenter *)sharedCenter;

/** Authenticates the device/application on Apple's Game Center. */
- (void)authenticatePlayer;

/** Checks for Game Center support on the device. 
 * @return YES or NO, depending if the device supports Game Center or not.
 */
- (BOOL)hasGameCenterSupport;

/** Returns whether or not the user is logged on.
 * @return YES or NO, depending if the user is logged on or not.
 */
- (BOOL)isLoggedIn;

/** Reports a score to Game Center. 
 * @param score The score to be published on the leaderboard.
 * @param category The leaderboard name.
 */
- (void)reportScore:(int64_t)score forCategory:(NSString*)category;

/** Reports an achievement to Game Center.
 * @param identifier The achievement identifier.
 * @param percent Completion percentage on the achievement. Return 100 to award the achievement.
 */
- (void)reportAchievementIdentifier:(NSString*)identifier percentComplete:(float)percent;

/** Retries score reporting to Game Center, in the case it failed. */
- (void)flushScore;

@end
