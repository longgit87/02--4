//
//  UIBarButtonItem+YLEXT.m
//  02不得姐
//
//  Created by 陈亚龙 on 15/10/1.
//  Copyright © 2015年 www.xm.com. All rights reserved.
//

#import "UIBarButtonItem+YLEXT.h"

@implementation UIBarButtonItem (YLEXT)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];

    return [[self alloc]initWithCustomView:button];
}
@end
