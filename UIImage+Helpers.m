//
//  UIImage+Helpers.m
//  fws
//
//  Created by ateliee on 2014/09/26.
//  Copyright (c) 2014年 minato. All rights reserved.
//

#import "UIImage+Helpers.h"

@implementation UIImage (Helpers)

// 画面サイズに合わせて自動リサイズ
-(UIImage *) autoResizeScale{
    float screenScale = [UIScreen mainScreen].scale;
    if (screenScale != 1.0f) {
        return [self resizeScale:(1.0f / screenScale)];
    }
    return self;
}

// リサイズ
-(UIImage *)resizeScale : (float) scale{
    CGSize rs = CGSizeMake(self.size.width * scale, self.size.height * scale);
    
    UIGraphicsBeginImageContext(rs);
    [self drawInRect:CGRectMake(0, 0, rs.width, rs.height)];
    UIImage* new = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return new;
}

@end
