//
//  MEXLog.h
//  iHelpers
//
//  Created by Eduardo Almeida on 10/09/04.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MEXLog : NSObject {
	NSString *stringToWrite;
}

- (void)logToConsole:(NSString *)string;
- (void)log:(NSString *)string toKey:(NSString *)key;
- (void)log:(NSString *)string toFile:(NSString *)filePath replacingContentsOfFile:(BOOL)replace appendingTimestamp:(BOOL)timestamp error:(NSError **)error;

@end
