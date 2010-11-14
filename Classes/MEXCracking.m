//
//  MEXCracking.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MEXCracking.h"
#import "UIAlertView+iHelpers.h"

@implementation MEXCracking

- (id)init {
	return self;
}

+ (BOOL)applicationIsCracked {
	NSBundle *bundle = [NSBundle mainBundle];
	NSDictionary *info = [bundle infoDictionary];
	
	if ([info objectForKey: @"SignerIdentity"] != nil) {
		return YES;
	} else {
		return NO;
	}
}

- (void)ifCrackedCrashAfterLaunches:(int)appLaunches {
	if ([MEXCracking applicationIsCracked]) {
		NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	
		if (![defaults objectForKey:@"Crash after X launches"])
			[defaults setInteger:0 forKey:@"Crash after X launches"];
	
		if (appLaunches >= [defaults integerForKey:@"Crash after X launches"]) {
			exit(0);
		} else {
			if (firstThisRun) {
				appLaunches++;
				[defaults setInteger:appLaunches forKey:@"Crash after X launches"];
			}
		}
	}
}

- (void)ifCrackedCrashAfterSeconds:(double)seconds {
	if ([MEXCracking applicationIsCracked]) {
		if (shouldDoNow)
			exit(0);
	
		shouldDoNow = YES;
	
		[NSTimer scheduledTimerWithTimeInterval:seconds target:self selector:@selector(ifCrackedCrashAfterSeconds:) userInfo:nil repeats:NO];
	}
}

- (void)ifCrackedOpenURL:(NSURL *)url afterSeconds:(double)seconds andCrash:(BOOL)crashApp {
	if ([MEXCracking applicationIsCracked]) {
		if (shouldDoNow) {
			[[UIApplication sharedApplication] openURL:url];
			if (shouldCrash)
				exit(0);
		}
		
		if (crashApp)
			shouldCrash = YES;
		
		shouldDoNow = YES;
		
		[NSTimer scheduledTimerWithTimeInterval:seconds target:self selector:@selector(ifCrackedOpenURL:afterSeconds:andCrash:) userInfo:nil repeats:NO];
	}
}

- (void)ifCrackedOpenURL:(NSURL *)url afterLaunches:(int)appLaunches andCrash:(BOOL)crashApp {
	if ([MEXCracking applicationIsCracked]) {
		NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
		
		if (![defaults objectForKey:@"Crash after X launches"])
			[defaults setInteger:0 forKey:@"Crash after X launches"];
		
		if (appLaunches >= [defaults integerForKey:@"Crash after X launches"]) {
			[[UIApplication sharedApplication] openURL:url];
			if (crashApp)
				exit(0);
		} else {
			if (firstThisRun) {
				appLaunches++;
				[defaults setInteger:appLaunches forKey:@"Crash after X launches"];
			}
		}
	}
}

- (void)ifCrackedDisplayAlertWithTitle:(NSString *)title message:(NSString *)message button:(NSString *)buttonTitle afterSeconds:(double)seconds andCrash:(BOOL)crashApp {
	if ([MEXCracking applicationIsCracked]) {
		if (shouldDoNow) {
			[UIAlertView displayAlertWithTitle:title message:message delegate:self cancelButton:buttonTitle otherButton:nil];
			if (shouldCrash)
				exit(0);
		}
		
		if (crashApp)
			shouldCrash = YES;
		
		shouldDoNow = YES;
		
		[NSTimer scheduledTimerWithTimeInterval:seconds target:self selector:@selector(ifCrackedOpenURL:afterSeconds:andCrash:) userInfo:nil repeats:NO];
	}
}

- (void)ifCrackedDisplayAlertWithTitle:(NSString *)title message:(NSString *)message button:(NSString *)buttonTitle afterLaunches:(int)appLaunches andCrash:(BOOL)crashApp {
	if ([MEXCracking applicationIsCracked]) {
		NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
		
		if (![defaults objectForKey:@"Crash after X launches"])
			[defaults setInteger:0 forKey:@"Crash after X launches"];
		
		if (appLaunches >= [defaults integerForKey:@"Crash after X launches"]) {
			[UIAlertView displayAlertWithTitle:title message:message delegate:self cancelButton:buttonTitle otherButton:nil];
			if (crashApp)
				exit(0);
		} else {
			if (firstThisRun) {
				appLaunches++;
				[defaults setInteger:appLaunches forKey:@"Crash after X launches"];
			}
		}
	}
}

@end
