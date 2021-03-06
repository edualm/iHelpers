//
//  MPMediaItem Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

/** MPMediaItem Extensions */

#import <MediaPlayer/MediaPlayer.h>

@interface MPMediaItem (iHelpers)

/** Generates a media item from a media item ID.
 * @param persistentId The media item ID.
 * @return Returns a media item.
 */
+ (MPMediaItem *)itemWithSongId:(NSNumber *)persistentId;

/** Generates a persistent ID from a media item.
 * @return Returns the he media item ID.
 */
- (NSNumber *)getPersistentId;

@end
