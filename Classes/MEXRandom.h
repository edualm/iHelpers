//
//  MEXRandom.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>

@interface MEXRandom : NSObject {

}

+ (int)randomNumberUpTo:(int)number;
+ (int)randomNumberFrom:(int)from to:(int)to;

@end
