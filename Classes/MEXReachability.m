//
//  MEXReachability.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MEXReachability.h"
#import "Reachability.h"

@implementation MEXReachability

+ (BOOL)hasInternet {
	Reachability *r = [Reachability reachabilityWithHostName:@"last.fm"];
	NetworkStatus internetStatus = [r currentReachabilityStatus];
	
	if ((internetStatus != ReachableViaWiFi) && (internetStatus != ReachableViaWWAN)){
		return NO;
	} else {
		return YES;
	}
}

@end
