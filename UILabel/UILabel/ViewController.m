//
//  ViewController.m
//  UILabel
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
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(10, 10, 100, 100);
    label.backgroundColor = [UIColor colorWithRed:0.1f green:0.8f blue:0.2f alpha:1];
    label.text = @"hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    // label.textColor = [UIColor clearColor];
    label.alpha = 0.5f;
    
    label.font = [UIFont systemFontOfSize:30];
    label.font = [UIFont boldSystemFontOfSize:12];
    label.font = [UIFont italicSystemFontOfSize:13];
    label.font = [UIFont fontWithName:@"Bodoni 72" size:14];
    
    label.shadowColor = [UIColor redColor];
    label.shadowOffset = CGSizeMake(5, 5);
    
    label.lineBreakMode = NSLineBreakByCharWrapping;
    label.numberOfLines = 0;
    
    CGSize size = [label.text sizeWithFont:label.font constrainedToSize:CGSizeMake(100, 10000) lineBreakMode:NSLineBreakByCharWrapping];
    label.frame = CGRectMake(label.frame.origin.x, label.frame.origin.y, label.frame.size.width, size.height);
    
    [self.view addSubview:label];
    
    for (NSString *name in [UIFont familyNames])
    {
        NSLog(@"%@", name);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
