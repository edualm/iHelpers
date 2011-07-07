//
//  NSDate Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import <Foundation/Foundation.h>

#define MEXMinutesComponent 0
#define MEXHoursComponent 1

@interface NSDate (iHelpers)

- (int)getTimeComponent:(int)MEXTimeComponent fromDate:(NSDate *)theDate;

@end
