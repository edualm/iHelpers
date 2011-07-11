//
//  UIView Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "UIView+iHelpers.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (iHelpers)

- (void)saveToCameraRoll {
    UIGraphicsBeginImageContext(self.bounds.size); 
    
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
}

- (void)saveRepresentationToCameraRoll {
    UIGraphicsBeginImageContext(self.bounds.size); 
    
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
}

@end
