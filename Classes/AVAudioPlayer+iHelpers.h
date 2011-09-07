//
//  AVAudioPlayer Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

/** AVAudioPlayer Extensions */

@interface AVAudioPlayer (iHelpers)

/** Plays a sound. _(Deprecated)_
 * @param fileName The name of the sound file.
 * @param extension The sound file extension.
 */
+ (void)playSoundWithName:(NSString *)fileName type:(NSString *)extension DEPRECATED_ATTRIBUTE;

/** Plays a sound.
 * @param fileName The name of the sound file.
 * @param extension The sound file extension.
 */
- (void)playSoundWithName:(NSString *)fileName type:(NSString *)extension;

@end
