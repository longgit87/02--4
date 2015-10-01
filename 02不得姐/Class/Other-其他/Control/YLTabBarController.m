//
//  YLTabBarController.m
//  02不得姐
//
//  Created by 陈亚龙 on 15/10/1.
//  Copyright © 2015年 www.xm.com. All rights reserved.
//

#import "YLTabBarController.h"
#import "YLEssenceViewController.h"
#import "YLFriendTrendsViewController.h"
#import "YLMeViewController.h"
#import "YLNewViewController.h"
#import "YLTabbar.h"
#import "YLNavigationController.h"

@interface YLTabBarController ()

@end

@implementation YLTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setupChildView];
    
    [self setupTabBar];
    

    [self setupTabBarItem];

}
- (void)setupChildView
{

    //精华
    [self setupChileVc:[[YLEssenceViewController alloc]init] title:@"精华" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    
    //新帖
    [self setupChileVc:[[YLNewViewController alloc]init] title:@"新帖" image:@"tabBar_new_icon" selectImage:@"tabBar_new_click_icon"];
    
    //关注
    [self setupChileVc:[[YLFriendTrendsViewController alloc]init] title:@"关注" image:@"tabBar_friendTrends_icon" selectImage:@"tabBar_friendTrends_click_icon"];
    
    //我
    [self setupChileVc:[[YLMeViewController alloc]init] title:@"我" image:@"tabBar_me_icon" selectImage:@"tabBar_me_click_icon"];
    


}
//初始化子控制器
- (void)setupChileVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage
{
     //包装成导航控制器
    UINavigationController *nav = [[YLNavigationController alloc]initWithRootViewController:childVc];
    [self addChildViewController:nav];
    //设置tabBarItem
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    childVc.tabBarItem.title = title;
    

}
//初始化tabBar
- (void)setupTabBar
{

    YLTabbar *tabBar = [[YLTabbar alloc]init];
    [self setValue:tabBar forKeyPath:@"tabBar"];

}
//初始化tabBarItem
- (void)setupTabBarItem
{
  
    //normal下的item
    NSMutableDictionary *norAttributes = [NSMutableDictionary dictionary];
    norAttributes[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    norAttributes[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    //select下的item
    NSMutableDictionary *selectAttributes = [NSMutableDictionary dictionary];
    selectAttributes[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    

    //拿到所有的tabBarItem统一设置
    UITabBarItem *item = [UITabBarItem appearance];
    
    [item setTitleTextAttributes:norAttributes forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectAttributes forState:UIControlStateSelected];

}
@end
