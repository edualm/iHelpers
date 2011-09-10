//
//  MEXReachability.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MEXReachability.h"
#import "Reachability.h"

@implementation MEXReachability

+ (BOOL)hasInternet {
	Reachability *r = [Reachability reachabilityWithHostName:@"google.com"];
	NetworkStatus internetStatus = [r currentReachabilityStatus];
	
	if ((internetStatus != ReachableViaWiFi) && (internetStatus != ReachableViaWWAN))
		return NO;
	else
		return YES;
}

+ (BOOL)canConnectToHost:(NSString *)host {
    Reachability *r = [Reachability reachabilityWithHostName:host];
	NetworkStatus internetStatus = [r currentReachabilityStatus];
	
	if ((internetStatus != ReachableViaWiFi) && (internetStatus != ReachableViaWWAN))
		return NO;
	else
		return YES;
}

@end
