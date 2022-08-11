//
//  NSDate+Extension.m
//  Artist
//
//  Created by Artlets on 2018/6/8.
//  Copyright © 2018年 Macle. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)
/**
 是否是今年
 
 @return
 */
- (BOOL) isThisYear {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit  unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    //其它时间单元格
    NSDateComponents * oterCom = [calendar components:unit fromDate:self];
    //当前时间单元格
    NSDateComponents *currentCom = [calendar components:unit fromDate:[NSDate date]];
    BOOL isThisYear = oterCom.year == currentCom.year;
    
    return isThisYear;
}
/**
 是否是明天
 
 @return
 */
- (BOOL) isTomorrow {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    return [calendar isDateInTomorrow:self];
}
/**
 是否是昨天
 */
- (BOOL) isYesterday {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    return [calendar isDateInYesterday:self];
}
/*
 * 是否是今天
 */
- (BOOL) isToday {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    return [calendar isDateInToday:self];
}
@end
