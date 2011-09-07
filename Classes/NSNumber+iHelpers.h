//
//  NSNumber Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <MediaPlayer/MediaPlayer.h>

/** NSNumber Extensions */

@interface NSNumber (iHelpers)

/** Generates a persistent ID from a media item.
 * @param mediaItem The media item.
 * @return Returns the he media item ID.
 */
- (NSNumber *)getPersistentIdForItem:(MPMediaItem *)mediaItem;

@end
