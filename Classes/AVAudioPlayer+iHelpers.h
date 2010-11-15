//
//  AVAudioPlayer Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//


#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface AVAudioPlayer (iHelpers)

#if DEPRECATED_METHEODS_ENABLED
+ (void)playSoundWithName:(NSString *)fileName type:(NSString *)extension;
#endif

- (void)playSoundWithName:(NSString *)fileName type:(NSString *)extension;

@end
