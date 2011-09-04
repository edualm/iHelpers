//
//  MEXRandom.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MEXRandom.h"

@implementation MEXRandom

+ (int)randomNumberUpTo:(int)number {
	srandomdev();
	return random()%number;
}

+ (int)randomNumberFrom:(int)from to:(int)to {
	srandomdev();
	if (from>to) {
        // Historical comment. BIG was once BUG because of a typo.
        [NSException raise:@"MEX_RANDOM_FROM_IS_WAY_TOO_BIG" format:@"(int)from can't be bigger than (int)to in MEXRandom."];
		return 0;
	} else {
		int beef = to - from;
		return random()%beef + from;
	}
}

@end
