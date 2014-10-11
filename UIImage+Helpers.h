//
//  UIImage+Helpers.h
//  fws
//
//  Created by ateliee on 2014/09/26.
//  Copyright (c) 2014年 minato. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Helpers)

// 画面サイズに合わせて自動リサイズ
-(UIImage *) autoResizeScale;
// リサイズ
-(UIImage *)resizeScale : (float) scale;

@end
