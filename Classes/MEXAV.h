//
//  MEXAV.h
//  iHelpers
//
//  Created by Eduardo Almeida on 10/09/09.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface MEXAV : NSObject <AVAudioPlayerDelegate> {

}

- (void)playSoundWithName:(NSString *)fileName type:(NSString *)extension;
- (void)playVideoWithPath:(NSString *)fileName type:(NSString *)extension view:(UIView *)viewToDisplay;

@end
