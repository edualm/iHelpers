//
//  UIAlertView Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "UIAlertView+iHelpers.h"

@implementation UIAlertView (iHelpers)

+ (void)displayAlertWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButton:(NSString *)cancelButtonTitle otherButton:(NSString *)otherButtonTitle, ... {
	UIAlertView *alert = [UIAlertView new];
	[alert initWithTitle:title message:message delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitle, nil];
	[alert show];
	[alert release];
}

@end

