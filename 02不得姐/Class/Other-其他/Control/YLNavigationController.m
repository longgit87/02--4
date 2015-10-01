//
//  YLNavigationController.m
//  02不得姐
//
//  Created by 陈亚龙 on 15/10/1.
//  Copyright © 2015年 www.xm.com. All rights reserved.
//

#import "YLNavigationController.h"

@interface YLNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation YLNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.interactivePopGestureRecognizer.delegate = self;

}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    //判断是否为根控制器
    if (self.childViewControllers.count > 0) {
        
        //设置导航栏左边按钮

        UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [backBtn setTitle:@"返回" forState:UIControlStateNormal];
        [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [backBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [backBtn setImage: [UIImage imageNamed:@"navigationButtonReturnClick"]forState:UIControlStateHighlighted];
        backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);//内容左移
        backBtn.imageEdgeInsets = UIEdgeInsetsMake(0, -5, 0, 0);//只有图片左移
        //根据内容大小填充尺寸
        [backBtn sizeToFit];
        
        //隐藏底部tabBar
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
        //监听点击返回
        [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
    }
    
    
    [super pushViewController:viewController animated:animated];
    
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}
#pragma mark - UIGestureRecognizerDelegate
//作用：已经处于根控制器了，还进行右划操作，出现的卡顿现象
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if (self.childViewControllers.count == 1) {
        
        return NO;
    }
    return YES;
}
@end
