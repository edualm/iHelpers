//
//  MPMediaItem Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <MediaPlayer/MediaPlayer.h>

@interface MPMediaItem (iHelpers)

- (MPMediaItem *)itemWithSongId:(NSNumber *)persistentId;

@end
