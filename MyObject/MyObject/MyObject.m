//
//  MyObject.m
//  MyObject
//
//  Created by jason on 2016/12/17.
//  Copyright © 2016年 jason. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject
- (void)report
{
    NSLog(@"report");
}
+ (void)print
{
    NSLog(@"print");
}
- (NSString *)printSex
{
    return _sex;
}
- (void)setAge:(int)age
{
    _age = age;
}
- (void)setAge:(int)age andName:(NSString *)name
{
    _age = age;
    _name = name;
}
- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}
@end
