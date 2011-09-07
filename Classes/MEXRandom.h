//
//  MEXRandom.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>

/** The class MEXRandom is basically number randomization for everyone. */

@interface MEXRandom : NSObject {

}

/** Generates a random number from _0_ to _number_. 
 * @return The generated number.
 * @param number The maximum number to be generated.
 */
+ (int)randomNumberUpTo:(int)number;

/** Generates a random number from _from_ to _to_. 
 * @return The generated number.
 * @param from The minimum number to be generated.
 * @param to The maximum number to be generated.
 */
+ (int)randomNumberFrom:(int)from to:(int)to;

@end
