//
//  NSNumber Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "NSNumber+iHelpers.h"

@implementation NSNumber (iHelpers)

- (void)performOperation:(MEXOperation)operation withNumber:(NSNumber *)number {
    if (operation == MEXAdd) {
        self = [NSNumber numberWithInt:([self floatValue]+[number floatValue])];
        return;
    } else if (operation == MEXSubtract) {
        self = [NSNumber numberWithInt:([self floatValue]-[number floatValue])];
        return;
    } else if (operation == MEXMultiply) {
        self = [NSNumber numberWithInt:([self floatValue]*[number floatValue])];
        return;
    } else if (operation == MEXDivide)
        self = [NSNumber numberWithInt:([self floatValue]/[number floatValue])];
}

@end
