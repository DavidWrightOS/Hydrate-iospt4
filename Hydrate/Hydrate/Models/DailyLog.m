//
//  DailyLog.m
//  Hydrate
//
//  Created by David Wright on 6/26/20.
//  Copyright © 2020 Hydrate. All rights reserved.
//

#import "DailyLog.h"

@implementation DailyLog

- (instancetype)initWithDate:(NSDate *)date entries:(NSArray<IntakeEntry *> *)entries
{
    if (self = [super init]) {
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSDateComponents *components = [calendar components:( NSCalendarUnitMonth | NSCalendarUnitYear |
                                                             NSCalendarUnitHour | NSCalendarUnitMinute |
                                                             NSCalendarUnitSecond ) fromDate:date];
        [components setHour:0];
        [components setMinute:0];
        [components setSecond:0];

        _date = [calendar dateFromComponents:components];
        _entries = entries.copy;
    }
    return self;
}

- (NSInteger)totalIntakeAmount
{
    NSNumber *sum = [_entries.copy valueForKeyPath:@"@sum.intakeAmount"];
    return sum.integerValue;
}

@end