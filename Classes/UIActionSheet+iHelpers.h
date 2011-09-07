//
//  UIActionSheet Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>

/** UIActionSheet Extensions */

@interface UIActionSheet (iHelpers)

/** Displays an action sheet.
 * @param view The view to display the action sheet in.
 * @param sheetStyle The action sheet style.
 * @param message The action sheet body.
 * @param delegate The delegate for the alert.
 * @param cancelButtonTitle The title of the cancel button, if any.
 * @param destructiveButtonTitle The title of the destructive button, if any.
 * @param otherButtonTitle The title of another button, if any.
 */
+ (void)displayActionSheetInView:(UIView *)view style:(UIActionSheetStyle)sheetStyle message:(NSString *)message delegate:(id)delegate cancelButton:(NSString *)cancelButtonTitle destructiveButton:(NSString *)destructiveButtonTitle otherButton:(NSString *)otherButtonTitle;

@end
