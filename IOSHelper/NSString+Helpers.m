//
//  NSString+Helpers.m
//  fws
//
//  Created by ateliee on 2014/09/26.
//  Copyright (c) 2014年 minato. All rights reserved.
//

#import "NSString+Helpers.h"

@implementation NSString (Helpers)

// 数字判定
-(BOOL)isNumber{
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[-+]?([0-9]*)?(¥¥.)?([0-9]*)?$" options:0 error:&error];
    NSTextCheckingResult *match = [regex firstMatchInString:self options:0 range:NSMakeRange(0,self.length)];
    if(match){
        return TRUE;
    }
    return FALSE;
}

// 文字列前方一致検索
-(int) indexOf:(NSString*)c{
    NSRange range = [self rangeOfString:c];
    if(range.location == NSNotFound){
        return -1;
    }
    return (int)range.location;
}

// パラメータ変換
-(NSMutableDictionary *) parseParam{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    NSArray *phrases = [self componentsSeparatedByString:@"&"];
    for(int i=0;i<phrases.count;i++){
        NSError *error = nil;
        NSRegularExpression *regexp = [[NSRegularExpression alloc] initWithPattern:@"^(.+)=(.*)$" options:0 error:&error];
        if(error == nil){
            NSString *str = [phrases objectAtIndex:i];
            NSTextCheckingResult *match = [regexp firstMatchInString:
                                           str
                                                             options:0
                                                               range:NSMakeRange(0, str.length)];
            if(match.numberOfRanges == 3){
                NSString *p = [str substringWithRange:[match rangeAtIndex:1]];
                NSString *v = [str substringWithRange:[match rangeAtIndex:2]];
                p = [p stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
                v = [v stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
                [params setObject:v forKey:p];
            }
        }
    }
    return params;
}
+(NSString *) parseParamStringFromArray:(NSMutableDictionary *)params{
    NSString *text = @"";
    NSArray *keys = [params allKeys];
    for(int i=0;i<keys.count;i++){
        if(i > 0){
            text = [text stringByAppendingString:@"&"];
        }
        text = [text stringByAppendingFormat:@"%@=%@",[keys objectAtIndex:i],[params objectForKey:[keys objectAtIndex:i]]];
    }
    return text;
}

- (CGSize)sizeWithFontEx:(UIFont *)font
{
    NSDictionary *attributes = @{ NSFontAttributeName : font };
    return [self sizeWithAttributes:attributes];
}

- (CGSize)sizeWithFontEx:(UIFont *)font constrainedToSize:(CGSize)size
{
    return [self sizeWithFontEx:font constrainedToSize:size
                  lineBreakMode:NSLineBreakByWordWrapping];
}

- (CGSize)sizeWithFontEx:(UIFont *)font constrainedToSize:(CGSize)size
           lineBreakMode:(NSLineBreakMode)lineBreakMode
{
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.lineBreakMode = lineBreakMode;
    style.alignment = NSTextAlignmentLeft;
    
    NSDictionary *attributes = @{
                                 NSFontAttributeName : font,
                                 NSParagraphStyleAttributeName : style
                                 };
    CGRect rect = [self boundingRectWithSize:size
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil];
    return rect.size;
}

@end
