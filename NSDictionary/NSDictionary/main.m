//
//  main.m
//  NSDictionary
//
//  Created by jason on 2016/12/20.
//  Copyright © 2016年 jason. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建
        NSDictionary *dic1 = [NSDictionary dictionaryWithObject:@"val" forKey:@"key"];
        NSLog(@"%@", dic1);
        NSDictionary *dic2 = [NSDictionary dictionaryWithObjects:[[NSArray alloc] initWithObjects:@"val1", @"val2", @"val3", nil] forKeys:[[NSArray alloc] initWithObjects:@"key1", @"key2", @"key3", nil]];
        NSLog(@"%@", dic2);
        NSDictionary *dic3 = @{@"key1": @"val1", @"key2": @"val2"};
        NSLog(@"%@", dic3);
        
        // 长度
        int count = (int)[dic1 count];
        NSLog(@"%d", count);
        
        // 取值
        NSString *val1 = [dic1 valueForKey:@"key"];
        NSLog(@"%@", val1);
        NSString *val2 = [dic1 objectForKey:@"key"];
        NSLog(@"%@", val2);
        // 取出全部值
        NSArray *allValues = [dic2 allValues];
        NSLog(@"%@", allValues);
        // 取出全部键
        NSArray *allKeys = [dic2 allKeys];
        NSLog(@"%@", allKeys);
        // 取出部分值
        NSArray *vals = [dic2 objectsForKeys:@[@"key1", @"key2", @"a"] notFoundMarker:@"not found"];
        NSLog(@"%@", vals);
        
        // 遍历字典
        // for循环
        for (NSString *key in dic2)
        {
            NSLog(@"%@ = %@", key, [dic2 objectForKey:key]);
        }
        // 枚举
        NSEnumerator *en = [dic2 keyEnumerator];
        id key = nil;
        while (key = [en nextObject]) {
            NSLog(@"%@ = %@", key, [dic2 objectForKey:key]);
        }
        // block
        [dic2 enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            NSLog(@"%@ = %@", key, obj);
        }];
    }
    return 0;
}
