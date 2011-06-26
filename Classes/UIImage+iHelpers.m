//
//  UIImage Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "UIImage+iHelpers.h"

@implementation UIImage (iHelpers)

- (void)saveToCameraRoll {
    UIImageWriteToSavedPhotosAlbum(self, nil, nil, nil);
}

@end
