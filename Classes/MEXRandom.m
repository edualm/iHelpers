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
		[NSException exceptionWithName:@"FROM_IS_GIANT!" reason:@"Hey! MEXRandom speaking! (int)from can't be bigger than (int)to!" userInfo:nil];
		return 0;
	} else {
		int beef = to - from;
		return random()%beef + from;
	}
}

@end
