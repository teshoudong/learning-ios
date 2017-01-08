//
//  main.m
//  NSArray
//
//  Created by jason on 2016/12/18.
//  Copyright © 2016年 jason. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 可以存储不同类型的对象，只能存储对象，只存储指针
        NSArray *arr = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", @"4", nil];
        NSArray *array = @[@"1", @"2", @"3"];
        NSLog(@"%@", array);
        
        // 数组长度
        int count = (int)arr.count;
        NSLog(@"%d", count);
        
        // 判断数组中是否包含对应的对象
        BOOL hasItem = [arr containsObject:@"1"];
        NSLog(@"%d", hasItem);
        
        // 取元素
        // 最后一个元素
        NSString *str1 = [arr lastObject];
        // 第一个元素
        NSString *str2 = [arr firstObject];
        // 取出指定下标元素
        NSString *str3 = [arr objectAtIndex:2];
        // 取出指定元素下标，不存在则为-1
        int index = (int)[arr indexOfObject:@"4"];
        NSLog(@"%@ %@ %@ %d", str1, str2, str3, index);
        
        // 数组遍历
        // for循环
        for(int i = 0; i < arr.count; i++)
        {
            NSLog(@"%@", [arr objectAtIndex:i]);
        }
        // 快速枚举
        for (NSString *str4 in arr)
        {
            NSLog(@"%@", str4);
        }
        // block遍历
        [arr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"%@", obj);
            // 停止
            if (idx == 2) {
                *stop = YES;
            }
        }];
        // 迭代器
        NSEnumerator *en1 = [arr objectEnumerator];
        id next1 = nil;
        while (next1 = [en1 nextObject]) {
            NSLog(@"%@", next1);
        }
        // 反向遍历
        NSEnumerator *en2 = [arr reverseObjectEnumerator];
        id next2 = nil;
        while (next2 = [en2 nextObject]) {
            NSLog(@"%@", next2);
        }
    }
    return 0;
}
