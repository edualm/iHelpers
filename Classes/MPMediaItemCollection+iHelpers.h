//
//  MPMediaItemCollection Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <MediaPlayer/MediaPlayer.h>

@interface MPMediaItemCollection (iHelpers)

- (MPMediaItemCollection *)collectionWithSongId:(NSArray *)persistentIdArray;

@end
