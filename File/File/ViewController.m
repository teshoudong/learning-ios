//
//  ViewController.m
//  File
//
//  Created by jason on 2016/12/21.
//  Copyright © 2016年 jason. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 获取沙盒路径
    NSString *homePath = NSHomeDirectory();
    NSLog(@"%@", homePath);
    
    // 获取Document路径
    // 检索指定目录，第一个参数指定搜索路径名称，第二参数限定在沙盒内
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [documentPaths firstObject];
    NSLog(@"%@", documentPath);
    
    // 获取Library路径
    NSArray *libraryPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *libraryPath = [libraryPaths firstObject];
    NSLog(@"%@", libraryPath);
    
    // 获取Tmp路径
    NSString *tmpPath = NSTemporaryDirectory();
    NSLog(@"%@", tmpPath);
    
    // 拆分路径
    NSString *path = @"/Users/jason/Library/Developer/CoreSimulator/text.txt";
    NSArray *components = [path pathComponents];
    NSLog(@"%@", components);
    // 提取路径最后一个部分，如文件名
    NSString *fileName = [path lastPathComponent];
    NSLog(@"%@", fileName);
    // 删除路径最后一个部分
    NSString *str1 = [path stringByDeletingLastPathComponent];
    NSLog(@"%@", str1);
    // 追加一个部分
    NSString *addStr = [str1 stringByAppendingPathComponent:@"name.text"];
    NSLog(@"%@", addStr);
    
    // NSString -> NSData
    NSData *data1 = [@"data" dataUsingEncoding:NSUTF8StringEncoding];
    // NSData -> NSString
    NSString *str2 = [[NSString alloc] initWithData:data1 encoding:NSUTF8StringEncoding];
    // NSData -> UIImage
    UIImage *img = [UIImage imageWithData:data1];
    // UIImage -> NSData
    NSData *data2 = UIImagePNGRepresentation(img); // UIImageJPEGRepresentation
    // 创建文件夹
    // withIntermediateDirectories: YES可以覆盖 NO不可以覆盖
    NSString *jasonPath = [documentPath stringByAppendingPathComponent:@"jason"];
    NSFileManager *manager = [NSFileManager defaultManager];
    BOOL success1 = [manager createDirectoryAtPath:jasonPath withIntermediateDirectories:YES attributes:nil error:nil];
    if (success1) {
        NSLog(@"jason文件夹创建成功");
    } else {
        NSLog(@"jason文件夹创建失败");
    }
    
    // 创建文件
    NSString *textPath = [jasonPath stringByAppendingPathComponent:@"text.txt"];
    BOOL success2 = [manager createFileAtPath:textPath contents:nil attributes:nil];
    if (success2) {
        NSLog(@"text.txt文件创建成功");
    } else {
        NSLog(@"text.txt文件创建失败");
    }
    
    // 写入文件
    NSString *content = @"我是内容";
    BOOL success3 = [content writeToFile:textPath atomically:YES encoding:NSUTF8StringEncoding error:nil];
    if (success3) {
        NSLog(@"写入文件创建成功");
    } else {
        NSLog(@"写入文件创建失败");
    }
    
    // 文件是否存在
    BOOL exist = [manager fileExistsAtPath:textPath];
    if (exist) {
        NSLog(@"文件存在");
    } else {
        NSLog(@"文件不存在");
    }
    
    // 追加内容
    // 打开文件准备更新
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForUpdatingAtPath:textPath];
    // 将节点跳到文件末尾
    [fileHandle seekToEndOfFile];
    NSString *appendContent = @"hello";
    NSData *appendData = [appendContent dataUsingEncoding:NSUTF8StringEncoding];
    [fileHandle writeData:appendData];
    // 关闭文件
    [fileHandle closeFile];
    
    // 删除文件
    BOOL success4 =  [manager removeItemAtPath:textPath error:nil];
    if (success4) {
        NSLog(@"删除文件成功");
    } else {
        NSLog(@"删除文件失败");
    }
    
    // 写入图片
    UIImage *image = [UIImage imageNamed:@"img"];
    NSData *imageData = UIImagePNGRepresentation(image);
    NSString *imagePath = [jasonPath stringByAppendingPathComponent:@"img.png"];
    [imageData writeToFile:imagePath atomically:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
