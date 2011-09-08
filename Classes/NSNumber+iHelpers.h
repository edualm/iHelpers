//
//  NSNumber Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <MediaPlayer/MediaPlayer.h>

typedef enum {
    MEXAdd,
    MEXSubtract,
    MEXMultiply,
    MEXDivide
} MEXOperation;

/** NSNumber Extensions */

@interface NSNumber (iHelpers)

/** Generates a persistent ID from a media item.
 * @param mediaItem The media item.
 * @return Returns the he media item ID.
 */
- (NSNumber *)getPersistentIdForItem:(MPMediaItem *)mediaItem;

/** Performs mathmatical operations with an NSNumber.
 * @param operation The math operation to execute.
 * @param number The other number to do operations with.
 */
- (void)performOperation:(MEXOperation)operation withNumber:(NSNumber *)number;

@end
