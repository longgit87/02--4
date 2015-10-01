//
//  YLFriendTrendsViewController.m
//  02不得姐
//
//  Created by 陈亚龙 on 15/10/1.
//  Copyright © 2015年 www.xm.com. All rights reserved.
//

#import "YLFriendTrendsViewController.h"

@interface YLFriendTrendsViewController ()

@end

@implementation YLFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = YLCommonBGColor;
   
    [self setupNavBar];
    
    
    
    
    
}
- (void)setupNavBar
{
    //标题
    self.navigationItem.title = @"我的关注";

    //设置导航栏左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(friendRecommendClick)];
    

}
//点击登录
- (IBAction)registerLogin {
    
    
    
    
}
//点击推荐
- (void)friendRecommendClick
{

    
}
@end
