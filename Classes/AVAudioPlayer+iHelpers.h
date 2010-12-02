//
//  AVAudioPlayer Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//


#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface AVAudioPlayer (iHelpers)

+ (void)playSoundWithName:(NSString *)fileName type:(NSString *)extension __TTDEPRECATED_METHOD;
- (void)playSoundWithName:(NSString *)fileName type:(NSString *)extension;

@end
