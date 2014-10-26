//
//  NSString+Helpers.h
//  fws
//
//  Created by ateliee on 2014/09/26.
//  Copyright (c) 2014年 minato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Helpers)

// 数字判定
-(BOOL)isNumber;
// 文字列前方一致検索
-(int) indexOf:(NSString*)c;
// パラメータ変換
-(NSMutableDictionary *) parseParam;
+(NSString *) parseParamStringFromArray:(NSMutableDictionary *)params;
// サイズ判定
- (CGSize)sizeWithFontEx:(UIFont *)font;
- (CGSize)sizeWithFontEx:(UIFont *)font constrainedToSize:(CGSize)size;
- (CGSize)sizeWithFontEx:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode;

@end
