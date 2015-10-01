//
//  YLTabbar.m
//  02不得姐
//
//  Created by 陈亚龙 on 15/10/1.
//  Copyright © 2015年 www.xm.com. All rights reserved.
//

#import "YLTabbar.h"
@interface YLTabbar ()
/**发布按钮*/
@property (weak, nonatomic) UIButton *publicBtn;

@end

@implementation YLTabbar

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
        UIButton *publicBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [publicBtn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publicBtn setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        [publicBtn sizeToFit];
        [self addSubview:publicBtn];
        [publicBtn addTarget:self action:@selector(publicBtnClick) forControlEvents:UIControlEventTouchUpInside];
        self.publicBtn = publicBtn;
    }


    return self;
}
//点击发布
- (void)publicBtnClick
{

}
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.publicBtn.center = CGPointMake(self.width * 0.5, self.height * 0.5);
    
    NSInteger count = 5;
    CGFloat w = self.width / count;
    CGFloat h = self.height;
    CGFloat y = 0;
    NSInteger index = 0;
    for (UIView *tabBarButton in self.subviews) {
        
        //是否遍历到UITabBarButton
        if (![NSStringFromClass([tabBarButton class]) isEqualToString:@"UITabBarButton"]) continue;
        
        CGFloat x = index * w;
        //让后面的按钮都后移一个按钮的宽度
        if (index >= 2 ) {
            
            x += w;
        }
       
        tabBarButton.frame = CGRectMake(x, y, w, h);
        
        index++;
    }

}
@end
