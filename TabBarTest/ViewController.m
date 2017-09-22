//
//  ViewController.m
//  TabBarTest
//
//  Created by Scott Kenealy on 9/22/17.
//  Copyright © 2017 Scott Kenealy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize tabBar;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self setupTabBar];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) setupTabBar
{
    tabBar.delegate = self;
    
    tabBar.tintColor = [UIColor blackColor];
    tabBar.translucent = NO;
    
    NSMutableArray *tabItems = [NSMutableArray arrayWithCapacity:5];
    for (int i = 0; i < 5; ++i) {
        UITabBarItem *tab = [[UITabBarItem alloc] init];
        [tab setTitle:@"Tab Title"];
        tab.image = [[UIImage imageNamed:@"home_tab"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [tabItems addObject:tab];
    }
    [self.tabBar setItems:tabItems];
    [self.tabBar setSelectedItem:[tabItems objectAtIndex:0]];
}


@end
