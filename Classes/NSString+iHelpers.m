//
//  NSString Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "NSString+iHelpers.h"

@implementation NSString (iHelpers)

- (BOOL)containsString:(NSString *)string {
    if ([[self stringByReplacingOccurrencesOfString:string withString:@""] isEqualToString:self])
        return NO;
    return YES;
}

@end
