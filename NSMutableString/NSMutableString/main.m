//
//  main.m
//  NSMutableString
//
//  Created by jason on 2016/12/18.
//  Copyright © 2016年 jason. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableString *str = [[NSMutableString alloc] initWithCapacity:10];
        [str setString:@"hello"];
        
        // 追加字符串
        [str appendString:@"world"];
        [str appendFormat:@"%d", 12];
        NSLog(@"%@", str);
        
        // 替换字符串
        NSRange range = [str rangeOfString:@"world"];
        [str replaceCharactersInRange:range withString:@"IOS"];
        NSLog(@"%@", str);
        
        // 插入字符串
        [str insertString:@"android" atIndex:6];
        NSLog(@"%@", str);
        
        // 删除字符串
        NSRange range1 = NSMakeRange(0, 3);
        [str deleteCharactersInRange:range1];
        NSLog(@"%@", str);
    }
    return 0;
}
