//
//  MEXErrorReporting.h
//  iHelpers
//
//  Created by Eduardo Almeida on 10/09/04.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MEXErrorReporting : NSObject {
	NSUserDefaults *defaults;
	NSString *errorKey;
	NSString *errorReceiver;
	
	BOOL checkForErrors;
	BOOL sendErrors;
}

- (NSString *)errorKey;
- (NSString *)errorReceiver;
- (BOOL)checkForErrors;
- (void)sendErrors;
- (void)allIsGood;
- (void)setErrorReceiver:(NSString *)website;
- (void)setErrorKey:(NSString *)key;
- (void)logString:(NSString *)string;
- (void)logInteger:(int)integer;
- (void)logBoolean:(BOOL)boolean;
- (void)logDouble:(double)number;

@end
