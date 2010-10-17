//
//  MEXCracking.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>


@interface MEXCracking : NSObject {
	BOOL firstThisRun;
	BOOL shouldDoNow;
	BOOL shouldCrash;
}

+ (BOOL)applicationIsCracked;
- (void)ifCrackedCrashAfterLaunches:(int)appLaunches;
- (void)ifCrackedCrashAfterSeconds:(double)seconds;
- (void)ifCrackedOpenURL:(NSURL *)url afterSeconds:(double)seconds andCrash:(BOOL)crashApp;
- (void)ifCrackedOpenURL:(NSURL *)url afterLaunches:(int)appLaunches andCrash:(BOOL)crashApp;

@end
