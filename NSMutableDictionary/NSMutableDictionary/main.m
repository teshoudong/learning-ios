//
//  main.m
//  NSMutableDictionary
//
//  Created by jason on 2016/12/20.
//  Copyright © 2016年 jason. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 添加
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"1" forKey:@"a"];
        [dic setObject:@"2" forKey:@"b"];
        
        // 删除所有
        [dic removeAllObjects];
        // 删除指定键值对
        [dic removeObjectForKey:@"a"];
        // 删除多个键值对
        [dic removeObjectsForKeys:@[@"a", @"b"]];
    }
    return 0;
}
