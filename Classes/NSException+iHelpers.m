//
//  NSException Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//
//  This one was created more for fun. Heey, can't dev's have some fun too?
//

#import "NSException+iHelpers.h"

@implementation NSException (iHelpers)

+ (void)raiseExceptionWithName:(NSString *)theName description:(NSString *)theDescription {
    // Apple's function name is not... Well... I don't like it. So I replaced it.
    [NSException raise:theName format:theDescription, nil];
}

@end
