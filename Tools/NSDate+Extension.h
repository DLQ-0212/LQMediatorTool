//
//  NSDate+Extension.h
//  Artist
//
//  Created by Artlets on 2018/6/8.
//  Copyright © 2018年 Macle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)
/**
 是否是今年
 */
- (BOOL) isThisYear;
/**
 是否是明天
 */
- (BOOL) isTomorrow;
/**
 是否是昨天
 */
- (BOOL) isYesterday;
/*
 * 是否是今天
 */
- (BOOL) isToday;
@end
