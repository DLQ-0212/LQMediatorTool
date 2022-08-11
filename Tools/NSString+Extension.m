//
//  NSString+Extension.m
//  YHRunProject
//
//  Created by imac on 17/3/13.
//  Copyright © 2017年 yinhe.con. All rights reserved.
//

#import "NSString+Extension.h"
#import <CommonCrypto/CommonDigest.h>
@implementation NSString (Extension)
/**
 返回文字具体占据的实际的大小
 
 @param purposeSize 估算的大小
 @param font 字体
 @return 返回实际的文字的大小
 */
//- (CGSize)targetSizeForTextWithpurposeSize:(CGSize)purposeSize WithTextFont:(UIFont *)font {
////    //设置计算文本时字体的大小,以什么标准来计算
////    NSDictionary *attrbute = @{NSFontAttributeName:font};
////
////    return [self boundingRectWithSize:purposeSize options:(NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin) attributes:attrbute context:nil].size;
//    return CGSize
//}

/**
 使用MD5 进行加密方法
 */
+ (NSString *)md5:(NSString *)str
{
//    const char *cStr = [str UTF8String];
//    unsigned char digest[CC_MD5_DIGEST_LENGTH];
//
//    CC_MD5(cStr, (CC_LONG)strlen(cStr), digest);
//
//    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
//
//    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
//        [result appendFormat:@"%02x", digest[i]];
//    }
//
//    return [result copy];
    return @"123";
}
/**
 是否是中国地区的电话号码
 */
- (BOOL)isChinaPhoneNum {
//    NSString *phoneContain = @"^((16[6])|(19[8-9])|(13[0-9])|(15[^4])|(18[0-9])|(17[0-8])|(14[5,6,7,9]))\\d{8}$";
//    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneContain];
//    return [phoneTest evaluateWithObject:self];
    return YES;
}
/**
 是否是emoji表情
 */
- (BOOL) isEmoji {
//    if (self.length <= 0) {
//        return NO;
//    }
//    unichar first = [self characterAtIndex:0];
//    NSLog(@"%@",@(self.length));
//    switch (self.length) {
//        case 1:
//        {
//            if (first == 0xa9 || first == 0xae || first == 0x2122 ||
//                first == 0x3030 || (first >= 0x25b6 && first <= 0x278a) || (first >= 0x2793 && first <= 0x2fbf) ||
//                first == 0x2328 || (first >= 0x23e9 && first <= 0x23fa)) {
//                return YES;
//            }
//        }
//            break;
//
//        case 2:
//        {
//            unichar c = [self characterAtIndex:1];
//            if (c == 0xfe0f) {
//                if (first >= 0x203c && first <= 0x3299) {
//                    return YES;
//                }
//            }
//            if (first >= 0xd83c && first <= 0xd83e) {
//                return YES;
//            }
//        }
//            break;
//
//        case 3:
//        {
//            unichar c = [self characterAtIndex:1];
//            if (c == 0xfe0f) {
//                if (first >= 0x23 && first <= 0x39) {
//                    return YES;
//                }
//            }
//            else if (c == 0xd83c) {
//                if (first == 0x26f9 || first == 0x261d || (first >= 0x270a && first <= 0x270d)) {
//                    return YES;
//                }
//            }
//            if (first == 0xd83c) {
//                return YES;
//            }
//        }
//            break;
//
//        case 4:
//        {
//            unichar c = [self characterAtIndex:1];
//            if (c == 0xd83c) {
//                if (first == 0x261d || first == 0x270c) {
//                    return YES;
//                }
//            }
//            if (first >= 0xd83c && first <= 0xd83e) {
//                return YES;
//            }
//        }
//            break;
//
//        case 5:
//        {
//            if (first == 0xd83d) {
//                return YES;
//            }
//        }
//            break;
//        case 7:
//        case 8:
//        case 11:
//        {
//            if (first == 0xd83d) {
//                return YES;
//            }
//        }
//            break;
//
//        default:
//            break;
//    }
//
    return NO;
}
- (BOOL) isIDCardNumber {
//    if (self.length != 18) return NO;
//    // 正则表达式判断基本 身份证号是否满足格式
//    NSString *regex = @"^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9]|X)$";
//    //  NSString *regex = @"^(^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$)|(^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])((\\d{4})|\\d{3}[Xx])$)$";
//    NSPredicate *identityStringPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
//    //如果通过该验证，说明身份证格式正确，但准确性还需计算
//    if(![identityStringPredicate evaluateWithObject:self]) return NO;
//
//    //** 开始进行校验 *//
//
//    //将前17位加权因子保存在数组里
//    NSArray *idCardWiArray = @[@"7", @"9", @"10", @"5", @"8", @"4", @"2", @"1", @"6", @"3", @"7", @"9", @"10", @"5", @"8", @"4", @"2"];
//
//    //这是除以11后，可能产生的11位余数、验证码，也保存成数组
//    NSArray *idCardYArray = @[@"1", @"0", @"10", @"9", @"8", @"7", @"6", @"5", @"4", @"3", @"2"];
//
//    //用来保存前17位各自乖以加权因子后的总和
//    NSInteger idCardWiSum = 0;
//    for(int i = 0;i < 17;i++) {
//        NSInteger subStrIndex = [[self substringWithRange:NSMakeRange(i, 1)] integerValue];
//        NSInteger idCardWiIndex = [[idCardWiArray objectAtIndex:i] integerValue];
//        idCardWiSum+= subStrIndex * idCardWiIndex;
//    }
//
//    //计算出校验码所在数组的位置
//    NSInteger idCardMod=idCardWiSum%11;
//    //得到最后一位身份证号码
//    NSString *idCardLast= [self substringWithRange:NSMakeRange(17, 1)];
//    //如果等于2，则说明校验码是10，身份证号码最后一位应该是X
//    if(idCardMod==2) {
//        if(![idCardLast isEqualToString:@"X"]|| ![idCardLast isEqualToString:@"x"]) {
//            return NO;
//        }
//    }
//    else{
//        //用计算出的验证码与最后一位身份证号码匹配，如果一致，说明通过，否则是无效的身份证号码
//        if(![idCardLast isEqualToString: [idCardYArray objectAtIndex:idCardMod]]) {
//            return NO;
//        }
//    }
//    return YES;
    return YES;
}
/**
 是否是今天
 */
- (BOOL) isToday {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY.MM.dd"];
    NSDate *date = [formatter dateFromString:self];
    NSCalendar *calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    return [calendar isDateInToday:date];
}
/**
 确认是周几
 */
- (NSString *) isWeekDay {
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//    [formatter setDateFormat:@"YYYY.MM.dd"];
//    NSDate *date = [formatter dateFromString:self];
//     NSCalendar *calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
//   NSInteger week = [calendar ordinalityOfUnit:NSDayCalendarUnit inUnit:NSWeekCalendarUnit forDate:date];
//    NSArray *weekArr = @[@"周日",@"周一",@"周二",@"周三",@"周四",@"周五",@"周六"];
//    return weekArr[week - 1];
    return @"123";
}
/**
 转化成聊天时间的字符串信息
 */
- (NSString *) convertChatTimeStr {
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"YYYY.MM.dd HH:mm:ss"];
//    NSDate *date = [dateFormatter dateFromString:self];
//    if ([date isThisYear]) {
//        if ([date isToday]) { //今天
//            [dateFormatter setDateFormat:@"HH:mm"];
//        }else if ([date isYesterday]) {//昨天
////            [dateFormatter setDateFormat:@"HH:mm"];
//            return @"昨天";
//        }else {//其他时间
//            [dateFormatter setDateFormat:@"YYYY.MM.dd"];
//        }
//    }else {//不是今年时间
//        [dateFormatter setDateFormat:@"YYYY.MM.dd"];
//    }
//    return [dateFormatter stringFromDate:date];
    return @"123";
}
/**
 根据属性字符串信息返回属性字符串
 @param font 字体的大小
 */
- (NSAttributedString *) paragraphAttributesStringWithFont:(UIFont *) font {
//    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
//    [paragraphStyle setLineSpacing:ARTSize(3.0)];
//    NSMutableAttributedString *attributes = [[NSMutableAttributedString alloc] initWithString:self];
//    [attributes addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, self.length)];
//    if (font != nil) {
//        [attributes addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, self.length)];
//    }
//    return attributes;
    return nil;
}
/**
 根据字段返回json字符串信息
 @param dictionary 字典
 @return json字符串信息
 */
+ (NSString *) jsonStringWithDictionary:(NSDictionary *) dictionary {
//    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:nil];
//    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
//    return jsonString;
    return @"123";
}



@end
