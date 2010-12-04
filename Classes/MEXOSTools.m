//
//  MEXOSTools.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MEXOSTools.h"

@implementation MEXOSTools

- (NSString *)platform {
	// The following code was written by Erica Sadun.
	size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
	sysctlbyname("hw.machine", machine, &size, NULL, 0);
	NSString *platform = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
	free(machine);
	return platform;
}

- (NSString *)deviceType {
	NSString *platform = [self platform];
	if ([platform hasPrefix:@"iPhone"])
		return @"iPhone";
	if ([platform hasPrefix:@"iPod"])
		return @"iPod";
	if ([platform hasPrefix:@"iPad"])
		return @"iPad";
	
	return @"Unknown Device";
}

- (int)deviceVersion {
	int currentVersion = [[[UIDevice currentDevice] systemVersion] intValue];
	return currentVersion;
}

@end
