//
//  ViewController.m
//  UIImageView
//
//  Created by jason on 2016/12/18.
//  Copyright © 2016年 jason. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // NSString *path = [[NSBundle mainBundle] resourcePath];
    // NSString *imagePath = [NSString stringWithFormat:@"%@/img.png",path];
    // UIImage *image = [[UIImage alloc] initWithContentsOfFile:imagePath];
    
    UIImage *image = [UIImage imageNamed:@"img"];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(0, 0, 100, 100);
    imageView.image = image;
    // UIViewContentModeScaleAspectFill 拉伸不改变比例，充满最大的
    // UIViewContentModeScaleAspectFit 拉伸不改变比例，充满最小的
    // UIViewContentModeScaleToFill 拉伸改变比例（默认）
    imageView.contentMode = UIViewContentModeScaleToFill;
    [self.view addSubview:imageView];
    
    // 动画
    NSMutableArray *imageArray = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 3; i++)
    {
        UIImage *item = [UIImage imageNamed: [NSString stringWithFormat:@"%d.png", i]];
        [imageArray addObject:item];
    }
    UIImageView *imgView = [[UIImageView alloc] init];
    imgView.frame = CGRectMake(0, 200, 375, 200);
    imgView.animationImages = imageArray;
    imgView.animationDuration = 2;
    imgView.animationRepeatCount = 2;
    [imgView startAnimating];
    [self.view addSubview:imgView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
