//
//  CustomTabBarItem.m
//  TabColorDemo
//
//  Created by Robert Borkowski on 6/2/15.
//  Copyright (c) 2015 Rob Borkowski. All rights reserved.
//

#import "CustomTabBarItem.h"

@implementation CustomTabBar

+ (void)initialize
{
    //the color for the text for unselected tabs
    [UITabBarItem.appearance setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blueColor]} forState:UIControlStateNormal];
    
    //the color for selected icon
    //[[UITabBar appearance] tintColor: [UIColor whiteColor]];
    [[UITabBar appearance] setSelectedImageTintColor:[UIColor blueColor]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
        for (UITabBarItem *tbi in self.tabBar.items) {
            tbi.image = [tbi.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        }
    }
}

@end
