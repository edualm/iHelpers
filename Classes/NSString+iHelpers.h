//
//  NSString Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

/** NSString Extensions */

#import <Foundation/Foundation.h>

@interface NSString (iHelpers)

/** Checks if a string contains another string.
 * @param string The string to check against.
 * @return Returns YES if the sender contains the string, NO if not.
 */
- (BOOL)containsString:(NSString *)string;

@end
