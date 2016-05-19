//
//  Global.h
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#ifndef Global_h
#define Global_h


///运行时判断运行版本

//判断当前设备


//屏幕的长, 宽
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height

//随机色
#define kRandom_Color [UIColor colorWithRed:(CGFloat)arc4random_uniform(256)/256 green:(CGFloat)arc4random_uniform(256)/256 blue:(CGFloat)arc4random_uniform(256)/256 alpha:1.0]

//RGB

//自定义log


//自定义Log,且可以打印行号
#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s:%d\t%s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(FORMAT, ...) nil
#endif

//转颜色


#endif /* Global_h */


