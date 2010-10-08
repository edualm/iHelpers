//
//  MEXRandom.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MEXRandom.h"

@implementation MEXRandom

+ (int)generateRandomNumberUpTo:(int)number {
	srandomdev();
	return random()%number;
}

@end
