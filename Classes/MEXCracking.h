//
//  MEXCracking.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>


@interface MEXCracking : NSObject {
	BOOL firstThisRun;
	BOOL shouldCrashNow;
}

+ (BOOL)applicationIsCracked;
- (void)ifCrackedCrashAfterLaunches:(int)appLaunches;
- (void)ifCrackedCrashAfterSeconds:(double)seconds;

@end
