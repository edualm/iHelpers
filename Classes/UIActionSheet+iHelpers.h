//
//  UIActionSheet Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>


@interface UIActionSheet (iHelpers)

+ (void)displayActionSheetInView:(UIView *)view style:(UIActionSheetStyle)sheetStyle message:(NSString *)message delegate:(id)delegate cancelButton:(NSString *)cancelButtonTitle destructiveButton:(NSString *)destructiveButtonTitle otherButton:(NSString *)otherButtonTitle, ...;

@end
