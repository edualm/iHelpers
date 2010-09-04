//
//  MEXAlerts.m
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "MEXAlerts.h"

@implementation MEXAlerts

- (void)displayAlertWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButton:(NSString *)cancelButtonTitle otherButton:(NSString *)otherButtonTitle, ... {
	UIAlertView *alert = [UIAlertView new];
	[alert initWithTitle:title message:message delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitle, nil];
	[alert show];
	[alert release];
}

- (void)displayActionSheetInView:(UIView *)view style:(UIActionSheetStyle)sheetStyle message:(NSString *)message delegate:(id)delegate cancelButton:(NSString *)cancelButtonTitle destructiveButton:(NSString *)destructiveButtonTitle otherButton:(NSString *)otherButtonTitle, ... {
	UIActionSheet *actionSheet = [UIActionSheet new];
	[actionSheet initWithTitle:message delegate:delegate cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:otherButtonTitle, nil];
	[actionSheet showInView:view];
	[actionSheet autorelease];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
	NSLog(@"%d", buttonIndex);
}

@end
