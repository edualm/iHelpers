//
//  MEXErrorReporting.m
//  iHelpers
//
//  Created by Eduardo Almeida on 10/09/04.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MEXErrorReporting.h"

@implementation MEXErrorReporting

// Use [[MEXErrorReporting alloc] init]

- (id)init {
	defaults = [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"Error Reporting Key"])
		[self setErrorKey:[defaults objectForKey:@"Error Reporting Key"]];
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(allIsGood) name:UIApplicationWillTerminateNotification object:nil];
	return self;
}

- (NSString *)errorKey {
	return errorKey;
}

- (void)setErrorKey:(NSString *)key {
	errorKey = key;
	[defaults setObject:key forKey:@"Error Reporting Key"];
	[defaults synchronize];
}

- (NSString *)errorReceiver {
	return errorReceiver;
}

- (void)setErrorReceiver:(NSString *)website {
	errorReceiver = website;
	[defaults setObject:website forKey:@"Error Reporting Website"];
	[defaults synchronize];
}

- (void)logString:(NSString *)string {
	defaults = [NSUserDefaults standardUserDefaults];
	
	if (errorKey) {
		[defaults setObject:string forKey:errorKey];
		[defaults setObject:@"string" forKey:@"Log Type"];
		[defaults synchronize];
	} else {
		NSLog(@"There's no error key set! Please set one up using -(void)setErrorKey:(NSString *)key.");
	}
}

- (void)logInteger:(int)integer {
	defaults = [NSUserDefaults standardUserDefaults];
	
	if (errorKey) {
		[defaults setInteger:integer forKey:errorKey];
		[defaults setObject:@"int" forKey:@"Log Type"];
		[defaults synchronize];
	} else {
		NSLog(@"There's no error key set! Please set one up using -(void)setErrorKey:(NSString *)key.");
	}
}

- (void)logBoolean:(BOOL)boolean {
	defaults = [NSUserDefaults standardUserDefaults];
	
	if (errorKey) {
		[defaults setBool:boolean forKey:errorKey];
		[defaults setObject:@"bool" forKey:@"Log Type"];
		[defaults synchronize];
	} else {
		NSLog(@"There's no error key set! Please set one up using -(void)setErrorKey:(NSString *)key.");
	}
}

- (void)logDouble:(double)number {
	defaults = [NSUserDefaults standardUserDefaults];
	
	if (errorKey) {
		[defaults setDouble:number forKey:errorKey];
		[defaults setObject:@"double" forKey:@"Log Type"];
		[defaults synchronize];
	} else {
		NSLog(@"There's no error key set! Please set one up using -(void)setErrorKey:(NSString *)key.");
	}
}

- (BOOL)checkForErrors {
	if ([defaults objectForKey:errorKey]) {
		return YES;
	} else {
		return NO;
	}
}

- (void)sendErrors {
	if (checkForErrors) {
		// Send to website
	} else {
		NSLog(@"There are no errors. You can use -(BOOL)checkForErrors to check if there is anything to be reported.");
	}
}

- (void)allIsGood {
	if (errorKey) {
		defaults = [NSUserDefaults standardUserDefaults];
		[defaults removeObjectForKey:errorKey];
	}
}

@end
