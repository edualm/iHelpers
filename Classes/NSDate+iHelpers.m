//
//  NSDate Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

#import "NSDate+iHelpers.h"

@implementation NSDate (iHelpers)

- (int)getTimeComponent:(MEXTimeComponent)timeComponent {
    NSCalendar *gregorian = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    NSDateComponents *components = [gregorian components:(kCFCalendarUnitHour | kCFCalendarUnitMinute) fromDate:self];
    
    if (timeComponent == MEXMinutesComponent)
        return [components minute];
    else if (timeComponent == MEXHoursComponent)
        return [components hour];
    
    return 0;
}

@end
