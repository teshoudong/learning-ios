//
//  main.m
//  NSMutableArray
//
//  Created by jason on 2016/12/20.
//  Copyright © 2016年 jason. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *arr1 = [[NSArray alloc] initWithObjects:@"2", @"3", @"4", nil];
        NSMutableArray *arr2 = [[NSMutableArray alloc] init];
        // 添加元素
        [arr2 addObject:@"1"];
        NSLog(@"%@", arr2);
        // 通过数组添加元素
        [arr2 addObjectsFromArray:arr1];
        NSLog(@"%@", arr2);
        
        // 删除数组内所有元素
        // [arr2 removeAllObjects];
        // 删除最后一个元素
        // [arr2 removeLastObject];
        // 删除指定元素
        // [arr2 removeObject:@"2"];
        // 删除指定下标元素
        // [arr2 removeObjectAtIndex:2];
        // NSLog(@"%@", arr2);
        
        // 交换元素位置
        [arr2 exchangeObjectAtIndex:0 withObjectAtIndex:1];
        NSLog(@"%@", arr2);
        
        
    }
    return 0;
}
