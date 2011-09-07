//
//  NSDate Extensions
//
//  Part of iHelpers, an open-source project by Eduardo Almeida (MegaEduX.com).
//

/** NSDate Extensions */

#import <Foundation/Foundation.h>

typedef enum {
    MEXMinutesComponent,
    MEXHoursComponent
} MEXTimeComponent;

@interface NSDate (iHelpers)

/** Gets a component from the current date.
 * @param timeComponent The time component to get.
 * @return An int containing the time component.
 */
- (int)getTimeComponent:(MEXTimeComponent)timeComponent;

@end
