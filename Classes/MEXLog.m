//
//  MEXLog.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MEXLog.h"

@implementation MEXLog

- (void)logToConsole:(NSString *)string {
	// Yes, I am aware this is EXACTLY the same as running NSLog directly, but why not?
	NSLog(@"%@", string);
}

- (void)log:(NSString *)string toKey:(NSString *)key {
	[[NSUserDefaults standardUserDefaults] setObject:string forKey:key];
}

- (void)log:(NSString *)string toFile:(NSString *)filePath replacingContentsOfFile:(BOOL)replace appendingTimestamp:(BOOL)timestamp error:(NSError **)error {
	if (replace) {
		if (!timestamp)
			[string writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:error];
		else {
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

- (NSString *)stringFromFile:(NSString *)filePath error:(NSError **)error {
	NSString *fileContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:error];
	return fileContents;
}

- (NSString *)stringFromKey:(NSString *)key {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	NSString *string = [defaults objectForKey:key];
	return string;
}

@end
