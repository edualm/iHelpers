//
//  MEXOSTools.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MEXOSTools.h"

@implementation MEXOSTools

+ (NSString *)deviceType {
	NSString *platform = [UIDevice currentDevice].model;
	if ([platform hasPrefix:@"iPhone"])
		return @"iPhone";
	if ([platform hasPrefix:@"iPod"])
		return @"iPod";
	if ([platform hasPrefix:@"iPad"])
		return @"iPad";
	
	return @"Unknown Device";
}

+ (int)deviceVersion {
	int currentVersion = [[[UIDevice currentDevice] systemVersion] intValue];
	return currentVersion;
}

@end
