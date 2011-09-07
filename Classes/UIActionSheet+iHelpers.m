//
//  UIActionSheet Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "UIActionSheet+iHelpers.h"

@implementation UIActionSheet (iHelpers)

+ (void)displayActionSheetInView:(UIView *)view style:(UIActionSheetStyle)sheetStyle message:(NSString *)message delegate:(id)delegate cancelButton:(NSString *)cancelButtonTitle destructiveButton:(NSString *)destructiveButtonTitle otherButton:(NSString *)otherButtonTitle {
	UIActionSheet *actionSheet = [UIActionSheet new];
	[actionSheet initWithTitle:message delegate:delegate cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:otherButtonTitle, nil];
	[actionSheet showInView:view];
	[actionSheet autorelease];
}

@end
