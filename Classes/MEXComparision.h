//
//  MEXComparision.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>

/** The class MEXComparision doesn't do much. */

@interface MEXComparision : NSObject {

}

/** Compares an iOS version with another.
 * @return The comparision result.
 * @param leftVersion One of the versions to compare.
 * @param rightVersion The other version to compare.
 */
+ (NSComparisonResult)compareVersion:(NSString *)leftVersion withVersion:(NSString *)rightVersion;

@end
