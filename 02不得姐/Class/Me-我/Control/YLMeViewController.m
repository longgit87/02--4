//
//  YLMeViewController.m
//  02不得姐
//
//  Created by 陈亚龙 on 15/10/1.
//  Copyright © 2015年 www.xm.com. All rights reserved.
//

#import "YLMeViewController.h"
#import "YLSettingViewController.h"

@interface YLMeViewController ()

@end

@implementation YLMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = YLCommonBGColor;

    [self setupNavBar];
    
}

- (void)setupNavBar
{

    self.navigationItem.title = @"我的";

    
    //导航栏右边按钮
    
    //夜晚模式
    UIBarButtonItem *moon = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self action:@selector(moonClick)];
    //设置
    UIBarButtonItem *setting = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
 
    
    self.navigationItem.rightBarButtonItems = @[setting,moon];
}
//点击设置
- (void)settingClick
{
    YLSettingViewController *settingVc = [[YLSettingViewController alloc]init];
    settingVc.view.backgroundColor = [UIColor yellowColor];
    
    [self.navigationController pushViewController:settingVc animated:YES];

}
- (void)moonClick
{

}
@end
