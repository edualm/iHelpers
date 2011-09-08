//
//  MPMediaItem Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MPMediaItem+iHelpers.h"

@implementation MPMediaItem (iHelpers)

- (MPMediaItem *)itemWithSongId:(NSNumber *)persistentId {
    MPMediaQuery *query = [MPMediaQuery songsQuery];
    MPMediaPropertyPredicate *predicate = [MPMediaPropertyPredicate predicateWithValue:persistentId forProperty:MPMediaItemPropertyPersistentID];
    [query addFilterPredicate:predicate];
    NSArray *mediaItems = [query items];
    MPMediaItemCollection *collection = [[MPMediaItemCollection alloc] initWithItems:mediaItems];
    MPMediaItem *theItem = [collection.items objectAtIndex:0];
    return theItem;
}

- (NSNumber *)getPersistentId {
    NSNumber *theId = [self valueForProperty:MPMediaItemPropertyPersistentID];
    return theId;
}

@end
