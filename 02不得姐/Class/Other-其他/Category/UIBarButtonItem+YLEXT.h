//
//  UIBarButtonItem+YLEXT.h
//  02不得姐
//
//  Created by 陈亚龙 on 15/10/1.
//  Copyright © 2015年 www.xm.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (YLEXT)


+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

@end
