//
//  MEXComparision.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>


@interface MEXComparision : NSObject {

}

+ (NSComparisonResult)compareVersion:(NSString *)leftVersion withVersion:(NSString *)rightVersion;

@end
