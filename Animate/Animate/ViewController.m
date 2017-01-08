//
//  ViewController.m
//  Animate
//
//  Created by jason on 2016/12/20.
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
    view.frame = CGRectMake(0, 0, 100, 100);
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    
    [UIView animateWithDuration:1 animations:^(void) {
        view.center = CGPointMake(100, 100);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
