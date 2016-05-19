//
//  UIBarButtonItem+BarButtonItemWithButton.h
//  ComprehensiveSample_0420_Exercise
//
//  Created by Fangweiyi on 4/20/16.
//  Copyright © 2016 Fangweiyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (BarButtonItemWithButton)
+ (UIBarButtonItem *)barButtonItemWithCustomImageName:(NSString *)customImageName hightImageName:(NSString *)heightImageName forTarget:(id)target WithAction:(SEL)action;

+ (UIBarButtonItem *)barButtonItemWithCustomImage:(UIImage *)customImage hightImage:(UIImage *)heightImage forTarget:(id)target WithAction:(SEL)action;

@end
