//
//  MEXLog.m
//  iHelpers
//
//  Created by Eduardo Almeida on 10/09/04.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MEXLog.h"
#warning "MEXLog is /untested/ code and consequently may not even run properly. If you /need/ it working, please wait for the next commit."

@implementation MEXLog

- (void)logToConsole:(NSString *)string {
	// Yes, I am aware this is EXACTLY the same as running NSLog directly, but why not?
	NSLog(@"%@", string);
}

- (void)log:(NSString *)string toKey:(NSString *)key {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	[defaults setObject:string forKey:key];
}

- (void)log:(NSString *)string toFile:(NSString *)filePath replacingContentsOfFile:(BOOL)replace appendingTimestamp:(BOOL)timestamp error:(NSError **)error {
	if (replace) {
		if (!timestamp) {
			[string writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:error];
		} else {
			int timestamp = (int)[[NSDate date] timeIntervalSince1970];
			stringToWrite = [NSString stringWithFormat:@"%d: %@", timestamp, string];
			[stringToWrite writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:error];
		}
	} else {
		NSString *currentContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:error];
		if (!timestamp) {
			stringToWrite = [NSString stringWithFormat:@"%@\n%@", currentContents, string];
			[stringToWrite writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:error];
		} else {
			int timestamp = (int)[[NSDate date] timeIntervalSince1970];
			stringToWrite = [NSString stringWithFormat:@"%@\n%d: %@", currentContents, timestamp, string];
			[stringToWrite writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:error];
		}
		[currentContents release];
	}
}

@end
