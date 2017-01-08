//
//  main.m
//  NSString
//
//  Created by jason on 2016/12/18.
//  Copyright © 2016年 jason. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // C字符串
        char *s = "hello c";
        // Object-C字符串
        NSString *str = @"hello Object-C";
        
        // C->Object-C
        NSString *str1 = [NSString stringWithUTF8String:s];
        NSLog(@"%@", str1);
        // Object-C->C
        NSLog(@"%s", [str UTF8String]);
        
        // 创建字符串
        // 自动释放
        NSString *str2 = @"IOS";
        // 手动释放
        NSString *str3 = [[NSString alloc] init];
        str3 = @"IOS";
        
        // 格式化字符串
        NSString *str4 = [NSString stringWithFormat:@"a = %d b = %d", 1, 2];
        NSLog(@"%@", str4);
        // 拼接字符串
        NSString *str5 = [str1 stringByAppendingString:str2];
        NSLog(@"%@", str5);
        
        // 大写->小写
        NSString *str6 = @"ABCD";
        NSString *str7 = [str6 lowercaseString];
        NSLog(@"%@", str7);
        // 小写->大写
        NSString *str8 = [str7 uppercaseString];
        NSLog(@"%@", str8);
        
        // 判断前缀
        NSString *str9 = @"www.tmall.com";
        BOOL hasPrefix = [str9 hasPrefix:@"www"];
        NSLog(@"%d", hasPrefix);
        // 判断后缀
        BOOL hasSuffix = [str9 hasSuffix:@"com"];
        NSLog(@"%d", hasSuffix);
        
        // 分割字符串
        NSString *str10 = @"a,b,c";
        NSArray *strArray = [str10 componentsSeparatedByString:@","];
        for(NSString *str in strArray)
        {
            NSLog(@"%@", str);
        }
        
        // 按范围截取字符串（start，length）
        NSRange range = NSMakeRange(1, 5);
        NSString *str11 = [str9 substringWithRange:range];
        NSLog(@"%@", str11);
        // 从某一位截取后面的字符串
        NSString *str12 = [str9 substringFromIndex:5];
        NSLog(@"%@", str12);
        // 从头截取到某一位
        NSString *str13 = [str9 substringToIndex:5];
        NSLog(@"%@", str13);
        // 将字符串拆分成每一个字符
        for(int i = 0; i < [str13 length]; i++)
        {
            NSLog(@"%c", [str13 characterAtIndex:i]);
        }
        
        // 查找指定字符串位置
        NSString *str14 = @"ab cd ef ab";
        NSRange range1 = [str14 rangeOfString:@"ab"];
        NSLog(@"%ld %ld", range1.location, range1.length);
        
        // 用范围替换
        NSString *str15 = @"Hello IOS";
        NSString *str16 = [str15 stringByReplacingCharactersInRange:NSMakeRange(0, 5) withString:@"你好"];
        NSLog(@"%@", str16);
        // 用字符串替换
        NSString *str17 = [str15 stringByReplacingOccurrencesOfString:@"Hello" withString:@"你好"];
        NSLog(@"%@", str17);
        
        // 读取文件
        // 网络路径
        NSString *str18 = @"https://www.tmall.com";
        NSURL *httpURL = [NSURL URLWithString:str18];
        // 本地路径
        NSString *fileURL = [NSURL fileURLWithPath:str18];
        // 读取网络文件
        NSString *httpStr = [NSString stringWithContentsOfURL:httpURL encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@", httpStr);
        // 读取本地文件
        NSString *fileStr = [NSString stringWithContentsOfFile:@"/Applications/XAMPP/htdocs/test.txt" encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@", fileStr);
        // 写入文件
        NSString *str19 = @"hello visitor";
        BOOL isOK = [str19 writeToFile:@"/Applications/XAMPP/htdocs/test.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
        if (isOK)
            NSLog(@"写入成功");
        else
            NSLog(@"写入失败");
    }
    return 0;
}
