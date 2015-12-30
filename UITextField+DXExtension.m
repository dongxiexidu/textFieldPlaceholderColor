//
//  UITextField+DXExtension.m
//  DX百思不得姐
//
//  Created by 李东喜 on 15/11/10.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "UITextField+DXExtension.h"

static NSString * const DXPlaceholderColorKey = @"placeholderLabel.textColor";
@implementation UITextField (DXExtension)

- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    [self setValue:placeholderColor forKeyPath:DXPlaceholderColorKey];
}

- (UIColor *)placeholderColor
{
    return [self valueForKeyPath:DXPlaceholderColorKey];
}
@end
