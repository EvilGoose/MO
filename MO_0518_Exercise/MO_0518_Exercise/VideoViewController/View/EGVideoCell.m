//
//  EGVideoCell.m
//  MO_0518_Exercise
//
//  Created by Fangweiyi on 5/19/16.
//  Copyright © 2016 EvilGoose. All rights reserved.
//

#import "EGVideoCell.h"

@implementation EGVideoCell

+ (NSString *)cellIdentifier {
    return @"videoCell";
}

- (void)awakeFromNib {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

@end
