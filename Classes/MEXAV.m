//
//  MEXAV.m
//  iHelpers
//
//  Created by Eduardo Almeida on 10/09/09.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MEXAV.h"

@implementation MEXAV

- (void)playSoundWithName:(NSString *)fileName type:(NSString *)extension {
	NSString *soundPath = [[NSBundle mainBundle] pathForResource:fileName ofType:extension];  
	AVAudioPlayer *sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:soundPath] error:nil];
	sound.delegate = self;  
	[sound play];
}

- (void)playVideoWithPath:(NSString *)fileName type:(NSString *)extension view:(UIView *)viewToDisplay {
	NSString *videoPath = [[NSBundle mainBundle] pathForResource:fileName ofType:extension];
	MPMoviePlayerController *moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL fileURLWithPath:videoPath]];
	[[moviePlayer view] setFrame:[viewToDisplay bounds]];
	[viewToDisplay addSubview:[moviePlayer view]];
	[moviePlayer play];
}

@end
