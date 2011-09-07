//
//  MPMoviePlayerController Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

/** MPMoviePlayerController Extensions */

#import <Foundation/Foundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface MPMoviePlayerController (iHelpers)

/** Plays a video.
 * @param fileName The name of the video file.
 * @param extension The video file extension.
 * @param viewToDisplay The view to display the video in.
 */
+ (void)playVideoWithPath:(NSString *)fileName type:(NSString *)extension view:(UIView *)viewToDisplay;

@end
