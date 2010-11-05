//
//  MPMoviePlayerController Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MPMoviePlayerController+iHelpers.h"

@implementation MPMoviePlayerController (iHelpers)

+ (void)playVideoWithPath:(NSString *)fileName type:(NSString *)extension view:(UIView *)viewToDisplay {
	NSString *videoPath = [[NSBundle mainBundle] pathForResource:fileName ofType:extension];
	MPMoviePlayerController *moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL fileURLWithPath:videoPath]];
	[[moviePlayer view] setFrame:[viewToDisplay bounds]];
	[viewToDisplay addSubview:[moviePlayer view]];
	[moviePlayer play];
}

@end
