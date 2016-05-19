//
//  UIBarButtonItem+BarButtonItemWithButton.m
//  ComprehensiveSample_0420_Exercise
//
//  Created by Fangweiyi on 4/20/16.
//  Copyright © 2016 Fangweiyi. All rights reserved.
//

#import "UIBarButtonItem+BarButtonItemWithButton.h"

@implementation UIBarButtonItem (BarButtonItemWithButton)
+ (UIBarButtonItem *)barButtonItemWithCustomImageName:(NSString *)customImageName hightImageName:(NSString *)heightImageName forTarget:(id)target WithAction:(SEL)action {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeInfoLight];
    
    [button setImage:[UIImage imageNamed:customImageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:heightImageName] forState:UIControlStateHighlighted];
    
    [button sizeToFit];
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    return  buttonItem;
}

+ (UIBarButtonItem *)barButtonItemWithCustomImage:(UIImage *)customImage hightImage:(UIImage *)heightImage forTarget:(id)target WithAction:(SEL)action  {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];

    [button setImage:customImage forState:UIControlStateNormal];
    [button setImage:heightImage forState:UIControlStateHighlighted];
    
    [button sizeToFit];
    
    [button addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];

    
    return  buttonItem;
}
@end
