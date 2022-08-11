//
//  NSString+Extension.h
//  YHRunProject
//
//  Created by imac on 17/3/13.
//  Copyright © 2017年 yinhe.con. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (Extension)

/**
 返回文字具体占据的实际的大小
 @param purposeSize 估算的大小
 @param font 字体
 @return 返回实际的文字的大小
 */
- (CGSize)targetSizeForTextWithpurposeSize:(CGSize)purposeSize WithTextFont:(UIFont *)font;
/**
 根据属性字符串信息返回属性字符串
 @param font 字体的大小
 */
- (NSAttributedString *) paragraphAttributesStringWithFont:(UIFont *) font;
/**
 使用MD5 进行小写加密方法
 */
+ (NSString *) md5:(NSString *) str;
/**
 是否是中国地区的电话号码
 */
- (BOOL)isChinaPhoneNum;
/**
 是否是emoji表情
 */
- (BOOL) isEmoji;
/**
 是否是身份证号码
 */
- (BOOL) isIDCardNumber;
/**
 是否是今天
 */
- (BOOL) isToday;
/**
 转化成聊天时间的字符串信息
 */
- (NSString *) convertChatTimeStr;
/**
 确认是周几
 */
- (NSString *) isWeekDay;
/**
 根据字段返回json字符串信息
 @param dictionary 字典
 @return json字符串信息
 */
+ (NSString *) jsonStringWithDictionary:(NSDictionary *) dictionary;


@end
