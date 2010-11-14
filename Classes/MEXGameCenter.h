//
//  MEXGameCenter.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>
#import <GameKit/GameKit.h>

@class MEXGameCenter;

@interface MEXGameCenter : NSObject {
	int timesTried;
	BOOL gameCenterEnabled;
}

+ (void)reportScore:(int64_t)score forCategory:(NSString*)category;
- (void)flushScore;
+ (void)flushScore;
- (void)retryScoreReporting;
+ (void)reportAchievementIdentifier:(NSString*)identifier percentComplete:(float)percent;
+ (void)authenticatePlayer;
- (void)authenticatePlayer;
+ (BOOL)hasGameCenterSupport;

@property BOOL loggedIn;

@end
