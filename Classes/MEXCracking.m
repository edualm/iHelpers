//
//  MEXCracking.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MEXCracking.h"


@implementation MEXCracking

+ (BOOL)applicationIsCracked {
	NSBundle *bundle = [NSBundle mainBundle];
	NSDictionary *info = [bundle infoDictionary];
	
	if ([info objectForKey: @"SignerIdentity"] != nil) {
		return YES;
	} else {
		return NO;
	}
}

@end
