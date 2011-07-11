//
//  NSNumber Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "NSNumber+iHelpers.h"

@implementation NSNumber (iHelpers)

- (NSNumber *)getPersistentIdForItem:(MPMediaItem *)mediaItem {
    NSNumber *theId = [mediaItem valueForProperty:MPMediaItemPropertyPersistentID];
    return theId;
}

@end
