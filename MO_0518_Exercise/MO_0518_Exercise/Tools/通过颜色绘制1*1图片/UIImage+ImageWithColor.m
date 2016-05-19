//
//  UIImage+imageWithColor.m
//  DraggableHeader_0419_Exercise
//
//  Created by Fangweiyi on 4/19/16.
//  Copyright © 2016 Fangweiyi. All rights reserved.
//

#import "UIImage+ImageWithColor.h"

@implementation UIImage (ImageWithColor)
+ (instancetype)imageWithColor:(UIColor *)color {
    //矩形大小
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    // 开启位图上下文
    UIGraphicsBeginImageContext(rect.size);
    
    // 获取位图上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 使用color演示填充上下文
    CGContextSetFillColorWithColor(context, [color CGColor]);
    // 渲染上下文
    CGContextFillRect(context, rect);
    
    // 从上下文中获取图片
    UIImage *colorImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // 结束上下文
    UIGraphicsEndImageContext();

    return colorImage;
}
@end
