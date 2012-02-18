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

/** Searches the string for two substrings, and returns the substring between then.
 * @param start The first substring.
 * @param end The second substring.
 * @return Returns the substring if it exists, nil if it doesn't.
 */
- (NSString *)stringBetweenString:(NSString *)start andString:(NSString *)end;

/** Removes whitespaces from a string.
 * @return Returns the string without whitespaces.
 */
- (NSString *)stringByRemovingWhitespaces;

/** Removes linebreaks from a string.
 * @return Returns the string without linebreaks.
 */
- (NSString *)stringByRemovingLinebreaks;

@end
