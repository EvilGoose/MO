//
//  Global.h
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#ifndef Global_h
#define Global_h

//屏幕的长, 宽
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height

//随机色
#define kRandom_Color [UIColor colorWithRed:(CGFloat)arc4random_uniform(256)/256 green:(CGFloat)arc4random_uniform(256)/256 blue:(CGFloat)arc4random_uniform(256)/256 alpha:1.0]

//RGB

//自定义log

//转颜色


#endif /* Global_h */
