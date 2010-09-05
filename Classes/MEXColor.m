//
//  MEXColor.m
//  iHelpers
//
//  Created by Eduardo Almeida on 10/09/05.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MEXColor.h"


@implementation MEXColor

- (BOOL)color:(UIColor *)color isEqualToColor:(UIColor *)comparedColor redTolerance:(int)redTolerance greenTolerance:(int)greenTolerance blueTolerance:(int)blueTolerance {
	
	if (([color redComponent]-[comparedColor redComponent]) < redTolerance) {
		if (([color greenComponent]-[comparedColor greenComponent]) < greenTolerance) {
			if (([color blueComponent]-[comparedColor blueComponent]) < blueTolerance)
				return YES;
		}
	}
	
	return NO;
}

@end