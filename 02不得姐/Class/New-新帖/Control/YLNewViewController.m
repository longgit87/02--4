//
//  YLNewViewController.m
//  02不得姐
//
//  Created by 陈亚龙 on 15/10/1.
//  Copyright © 2015年 www.xm.com. All rights reserved.
//

#import "YLNewViewController.h"

@interface YLNewViewController ()

@end

@implementation YLNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = YLCommonBGColor;
    
    [self setupNavBar];

}
- (void)setupNavBar
{
    
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    //导航栏左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];

}
- (void)tagClick
{
    
    
}


@end
