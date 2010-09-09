//
//  MEXLog.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>


@interface MEXLog : NSObject {
	NSString *stringToWrite;
}

- (void)logToConsole:(NSString *)string;
- (void)log:(NSString *)string toKey:(NSString *)key;
- (void)log:(NSString *)string toFile:(NSString *)filePath replacingContentsOfFile:(BOOL)replace appendingTimestamp:(BOOL)timestamp error:(NSError **)error;
- (NSString *)stringFromFile:(NSString *)filePath error:(NSError **)error;
- (NSString *)stringFromKey:(NSString *)key;

@end
