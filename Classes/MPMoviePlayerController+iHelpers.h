//
//  MPMoviePlayerController Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface MPMoviePlayerController (iHelpers)

+ (void)playVideoWithPath:(NSString *)fileName type:(NSString *)extension view:(UIView *)viewToDisplay;

@end
