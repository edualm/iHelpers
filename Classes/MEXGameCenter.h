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

+ (void)reportScore:(int64_t)score forCategory:(NSString*)category DEPRECATED_ATTRIBUTE;
- (void)reportScore:(int64_t)score forCategory:(NSString*)category;
- (void)flushScore;
+ (void)flushScore DEPRECATED_ATTRIBUTE;
- (void)retryScoreReporting;
+ (void)reportAchievementIdentifier:(NSString*)identifier percentComplete:(float)percent DEPRECATED_ATTRIBUTE;
- (void)reportAchievementIdentifier:(NSString*)identifier percentComplete:(float)percent;
+ (void)authenticatePlayer DEPRECATED_ATTRIBUTE;
- (void)authenticatePlayer;
+ (BOOL)hasGameCenterSupport DEPRECATED_ATTRIBUTE;
- (BOOL)hasGameCenterSupport;
+ (BOOL)isLoggedIn DEPRECATED_ATTRIBUTE;
- (BOOL)isLoggedIn;

@end
