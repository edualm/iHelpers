//
//  NSDate Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "NSDate+iHelpers.h"

@implementation NSDate (iHelpers)

- (int)getTimeComponent:(int)MEXTimeComponent fromDate:(NSDate *)theDate {
    NSCalendar *gregorian = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    NSDateComponents *components = [gregorian components:(kCFCalendarUnitHour | kCFCalendarUnitMinute) fromDate:theDate];
    
    if (MEXTimeComponent == MEXMinutesComponent)
        return [components minute];
    else if (MEXTimeComponent == MEXHoursComponent)
        return [components hour];
    
    return 0;
}

@end
