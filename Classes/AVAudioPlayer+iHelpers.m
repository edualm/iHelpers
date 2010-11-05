//
//  AVAudioPlayer Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "AVAudioPlayer+iHelpers.h"

@implementation AVAudioPlayer (iHelpers)

+ (void)playSoundWithName:(NSString *)fileName type:(NSString *)extension {
	NSString *soundPath = [[NSBundle mainBundle] pathForResource:fileName ofType:extension];  
	AVAudioPlayer *sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:soundPath] error:nil];
	sound.delegate = self;  
	[sound play];
}

@end
