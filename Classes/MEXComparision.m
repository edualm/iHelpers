//
//  MEXComparision.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MEXComparision.h"

@implementation MEXComparision

+ (NSComparisonResult)compareVersion:(NSString *)leftVersion withVersion:(NSString *)rightVersion {
	//
	// Code from http://snipplr.com/view.php?codeview&id=2771
	// If it is good, why just not use it? :)
	//
	
	int i;
	
	// Break version into fields (separated by '.')
	NSMutableArray *leftFields  = [[NSMutableArray alloc] initWithArray:[leftVersion  componentsSeparatedByString:@"."]];
	NSMutableArray *rightFields = [[NSMutableArray alloc] initWithArray:[rightVersion componentsSeparatedByString:@"."]];
	
	// Implict ".0" in case version doesn't have the same number of '.'
	if ([leftFields count] < [rightFields count]) {
		while ([leftFields count] != [rightFields count]) {
			[leftFields addObject:@"0"];
		}
	} else if ([leftFields count] > [rightFields count]) {
		while ([leftFields count] != [rightFields count]) {
			[rightFields addObject:@"0"];
		}
	}
	
	// Do a numeric comparison on each field
	for(i = 0; i < [leftFields count]; i++) {
		NSComparisonResult result = [[leftFields objectAtIndex:i] compare:[rightFields objectAtIndex:i] options:NSNumericSearch];
		if (result != NSOrderedSame) {
			[leftFields release];
			[rightFields release];
			return result;
		}
	}
	
	[leftFields release];
	[rightFields release];	
	return NSOrderedSame;
}

@end
