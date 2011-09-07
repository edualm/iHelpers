//
//  MPMediaItemCollection Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

/** MPMediaItemCollection Extensions */

#import <MediaPlayer/MediaPlayer.h>

@interface MPMediaItemCollection (iHelpers)

/** Generates a collection from a media item IDs array.
 * @param persistentIdArray The media item ID array.
 * @return Returns a media item collection.
 */
- (MPMediaItemCollection *)collectionWithSongId:(NSArray *)persistentIdArray;

@end
