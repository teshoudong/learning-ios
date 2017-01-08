//
//  ViewController.m
//  UIView
//
//  Created by jason on 2016/12/17.
//  Copyright © 2016年 jason. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(10, 30, 355, 600);
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    
    CGRect bounds = [[UIScreen mainScreen] bounds];
    NSLog(@"screenWidth = %f screenHeight = %f", bounds.size.width, bounds.size.height);
    
    NSLog(@"x = %f y = %f width = %f height = %f", view.frame.origin.x, view.frame.origin.y, view.frame.size.width, view.frame.size.height);
    
    NSLog(@"centerX = %f centerY = %f", view.center.x, view.center.y);
    
    UIView *superView = view.superview;
    superView.backgroundColor = [UIColor blueColor];
    
    UIView *view1 = [[UIView alloc] init];
    view1.frame = CGRectMake(10, 10, 100, 100);
    view1.backgroundColor = [UIColor orangeColor];
    view1.tag = 1;
    [view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init];
    view2.frame = CGRectMake(40, 40, 100, 100);
    view2.backgroundColor = [UIColor blackColor];
    view2.tag = 2;
    [view addSubview:view2];
    
    NSArray *views = view.subviews;
    for(UIView *item in views)
    {
        if (item.tag == 1)
        {
            item.backgroundColor = [UIColor whiteColor];
        }
    }
    
    UIView *viewTag1 = [view viewWithTag:1];
    viewTag1.backgroundColor = [UIColor orangeColor];
    
    [view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
    UIView *view3 = [[UIView alloc] init];
    view3.frame = CGRectMake(60, 60, 100, 100);
    view3.backgroundColor = [UIColor redColor];
    [view insertSubview:view3 atIndex:2];
    // [view insertSubview:view3 aboveSubview:view1];
    // [view insertSubview:view3 belowSubview:view1];
    
    [view bringSubviewToFront:view3];
    [view sendSubviewToBack:view3];
    
    UIView *backView = [[UIView alloc] init];
    backView.frame = CGRectMake(bounds.size.width / 2 - 25, 400, 50, 50);
    backView.backgroundColor = [UIColor greenColor];
    backView.autoresizesSubviews = YES;
    backView.tag = 3;
    [self.view addSubview:backView];
    
    UIView *topView = [[UIView alloc] init];
    topView.frame = CGRectMake(10, 10, 30, 30);
    topView.backgroundColor = [UIColor orangeColor];
    topView.autoresizingMask = UIViewAutoresizingFlexibleRightMargin
    | UIViewAutoresizingFlexibleLeftMargin;
    [backView addSubview:topView];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(10, 550, 355, 30);
    btn.backgroundColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick
{
    UIView *backView = [self.view viewWithTag:3];
    backView.frame = CGRectMake(backView.frame.origin.x - 5, backView.frame.origin.y - 5, backView.frame.size.width + 10, backView.frame.size.height + 10);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
