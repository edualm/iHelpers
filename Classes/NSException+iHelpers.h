//
//  NSException Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//
//  This one was created more for fun. Heey, can't dev's have some fun too?
//

#import <Foundation/Foundation.h>

/** NSException Extensions */

@interface NSException (iHelpers)

/** Convenience function. Raises an exception.
 * @param theName The exception name/identifier.
 * @param theDescription The exception description.
 */
+ (void)raiseExceptionWithName:(NSString *)theName description:(NSString *)theDescription;

@end
