//
//  NSString Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "NSString+iHelpers.h"

@implementation NSString (iHelpers)

- (NSString *)stringBetweenString:(NSString *)start andString:(NSString *)end {
    NSRange startRange = [self rangeOfString:start];
    if (startRange.location != NSNotFound) {
        NSRange targetRange;
        targetRange.location = startRange.location + startRange.length;
        targetRange.length = [self length] - targetRange.location;   
        NSRange endRange = [self rangeOfString:end options:0 range:targetRange];
        if (endRange.location != NSNotFound) {
            targetRange.length = endRange.location - targetRange.location;
            return [self substringWithRange:targetRange];
        }
    }
    return nil;
}

- (NSString *)stringByRemovingWhitespaces {
    return [[self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] componentsJoinedByString:@""];
}

- (NSString *)stringByRemovingLinebreaks {
    return [self stringByReplacingOccurrencesOfString:@"\n" withString:@""];
}

- (BOOL)containsString:(NSString *)string {
    if ([[self stringByReplacingOccurrencesOfString:string withString:@""] isEqualToString:self])
        return NO;
    return YES;
}

@end
