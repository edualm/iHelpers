//
//  UIAlertView Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>

/** UIAlertView Extensions. */

@interface UIAlertView (iHelpers)

/** Displays an alert.
 * @param title The alert title.
 * @param message The alert body.
 * @param delegate The delegate for the alert.
 * @param cancelButtonTitle The title of the cancel button, if any.
 * @param otherButtonTitle The title of another button, if any.
 */
+ (void)displayAlertWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButton:(NSString *)cancelButtonTitle otherButton:(NSString *)otherButtonTitle/*, ...*/;

/** Convenience function. Combines _show_ and _release_ into a single function. */
- (void)showRelease;

@end

