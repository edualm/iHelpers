//
//  UIView+iHelpers.m
//  iHelpers
//
//  Created by Eduardo Almeida on 11/06/26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
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

@end
