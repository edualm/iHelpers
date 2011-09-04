//
//  MEXAprilFools.m
//  iHelpers
//
//  Created by Eduardo Almeida on 11/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

//
//  DO NOT USE THIS FUNCTION YET!
//

#import "MEXAprilFools.h"
#import "UIAlertView+iHelpers.h"

@implementation MEXAprilFools

- (id)init {
    NSLog(@"Do not use this.");
    return nil;
    
    /*if (self == [super init]) {
#error We need a calendar here.
        if (![[NSUserDefaults standardUserDefaults] boolForKey:@"MEXFooled"]) {
            [UIAlertView displayAlertWithTitle:@"iOS Anti-Virus" message:@"You've got a virus in your device. As a preventive measure, this application needs be terminated immediately." delegate:nil cancelButton:@"Terminate" otherButton:nil];
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"MEXFooled"];
            exit(0);
        }
    }
    
    return self;*/
}

@end
