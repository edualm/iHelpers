//
//  MEXOSTools.h
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>

/** The class MEXOSTools intends to aid you in getting information about the device and its OS. */

@interface MEXOSTools : NSObject

/** Returns the device type. 
 * @return The device type.
 * @param distinguishSimulatorFromRealDevice YES to distinguish simulator from device, NO if not.
 */
+ (NSString *)deviceType:(BOOL)distinguishSimulatorFromRealDevice;

/** Returns the device version.
 * @return Device version.
 */
+ (int)deviceVersion;

@end
