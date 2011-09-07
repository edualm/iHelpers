//
//  MEXReachability.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>

/** The class MEXReachability allows you to check for internet connection. */

@interface MEXReachability : NSObject {

}

/** Returns whether or not the device is connected to the internet. 
 * @return YES if it's connected, NO if not.
 */
+ (BOOL)hasInternet;

@end
