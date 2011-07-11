//
//  MPMediaItemCollection Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MPMediaItemCollection+iHelpers.h"

@implementation MPMediaItemCollection (iHelpers)

- (MPMediaItemCollection *)collectionWithSongId:(NSArray *)persistentIdArray {
    NSMutableArray *theArray = [NSMutableArray alloc];
    
    for (int x = 0; x < [persistentIdArray count]; x++) {
        MPMediaQuery *query = [MPMediaQuery songsQuery];
        MPMediaPropertyPredicate *predicate = [MPMediaPropertyPredicate predicateWithValue:[persistentIdArray objectAtIndex:x] forProperty:MPMediaItemPropertyPersistentID];
        [query addFilterPredicate:predicate];
        [theArray addObjectsFromArray:[query items]];
    }

    MPMediaItemCollection *collection = [[MPMediaItemCollection alloc] initWithItems:theArray];
    return collection;
}

@end
