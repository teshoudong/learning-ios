//
//  MyObject.h
//  MyObject
//
//  Created by jason on 2016/12/17.
//  Copyright © 2016年 jason. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyObject : NSObject
{
    @public
    NSString *_name;
    int _age;
}
@property (nonatomic, strong) NSString *sex;
- (void)report;
+ (void)print;
- (NSString *)printSex;
- (void)setAge:(int)age;
- (void)setAge:(int)age andName:(NSString *)name;
- (instancetype)initWithName:(NSString *)name;
@end
