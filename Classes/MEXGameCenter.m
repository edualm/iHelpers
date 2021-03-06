//
//  MEXGameCenter.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MEXGameCenter.h"
#import "UIAlertView+iHelpers.h"
#import "MEXComparision.h"

#define gameCenterEnabled (NSClassFromString(@"GKLocalPlayer")!=NULL)

static MEXGameCenter *gameCenter = nil;

@implementation MEXGameCenter

#pragma mark -
#pragma mark General

+ (MEXGameCenter *)sharedCenter {
    if (!gameCenter)
        gameCenter = [[MEXGameCenter alloc] init];
    return gameCenter;
}

- (void)authenticatePlayer {
	if (gameCenterEnabled) {
		[[GKLocalPlayer localPlayer] authenticateWithCompletionHandler:^(NSError *error) {
			if (error == nil) {
				[self flushScore];
			}
		}];
	}
}

- (BOOL)hasGameCenterSupport {
	NSString *gcSysVer = @"4.1";
	NSString *currSysVer = [[UIDevice currentDevice] systemVersion];
	
	if ([MEXComparision compareVersion:currSysVer withVersion:gcSysVer] == NSOrderedAscending)
		return NO;
	
	return YES;
}

- (BOOL)isLoggedIn {
	return [[GKLocalPlayer localPlayer] isAuthenticated];
}

#pragma mark -
#pragma mark Leaderboards

- (void)reportScore:(int64_t)score forCategory:(NSString*)category {
	if (gameCenterEnabled) {
		NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
		GKScore *scoreReporter = [[[GKScore alloc] initWithCategory:category] autorelease];
		scoreReporter.value = score;
		
		[scoreReporter reportScoreWithCompletionHandler:^(NSError *error) {
			if (error != nil) {
				[UIAlertView displayAlertWithTitle:@"Oops." message:[NSString stringWithFormat:@"There was an error uploading your score to Game Center. %@", [error localizedDescription]] delegate:self cancelButton:@"Okay" otherButton:nil];
				
				[NSTimer timerWithTimeInterval:10 target:self selector:@selector(retryScoreReporting) userInfo:nil repeats:NO];
				
				[defaults setInteger:[defaults integerForKey:@"Last Score"] forKey:@"Score that failed to save"];
				[defaults setObject:category forKey:@"Category of that score"];
				[defaults synchronize];
			} else {
				NSLog(@"Uploaded score!");
				[defaults removeObjectForKey:@"Score that failed to save"];
				[defaults removeObjectForKey:@"Category of that score"];
			}
		}];
	}
}

- (void)flushScore {
	if (gameCenterEnabled) {
		NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
		if ([defaults objectForKey:@"Category of that score"] && [defaults objectForKey:@"Score that failed to save"]) {
			NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
			[self reportScore:[defaults integerForKey:@"Score that failed to save"] forCategory:[defaults objectForKey:@"Category of that score"]];
		} else {
			NSLog(@"No scores to flush.");
		}
	}
}

#pragma mark -
#pragma mark Achievements

- (void)reportAchievementIdentifier:(NSString*)identifier percentComplete:(float)percent {
	if (gameCenterEnabled) {
		GKAchievement *achievement = [[[GKAchievement alloc] initWithIdentifier: identifier] autorelease];
		if (achievement) {
			achievement.percentComplete = percent;
			[achievement reportAchievementWithCompletionHandler:^(NSError *error) {
				if (error != nil)
					NSLog(@"We got an error reporting this achievement. :( %@", [error localizedDescription]);
			}];
		}
	}
}

@end