//
//  NSException Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//
//  This one was created more for fun. Heey, can't dev's have some fun too?
//

#import <Foundation/Foundation.h>

@interface NSException (iHelpers)

+ (void)raiseExceptionWithName:(NSString *)theName description:(NSString *)theDescription;

@end
