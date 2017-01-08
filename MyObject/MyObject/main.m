//
//  main.m
//  MyObject
//
//  Created by jason on 2016/12/17.
//  Copyright © 2016年 jason. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyObject.h"
#import "ChildObject.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyObject *myObject = [[MyObject alloc] init];
        
        [myObject report];
        
        [MyObject print];
        
        myObject->_name = @"Jason";
        NSLog(@"%@", myObject->_name);
        
        myObject.sex = @"男";
        NSLog(@"%@", myObject.sex);
        
        NSLog(@"%@", [myObject printSex]);
        
        [myObject setAge:12];
        NSLog(@"%d", myObject->_age);
        
        [myObject setAge:13 andName:@"Mark"];
        NSLog(@"age=%d name=%@", myObject->_age, myObject->_name);
        
        MyObject *myObj = [[MyObject alloc] initWithName:@"Pop"];
        NSLog(@"%@", myObj->_name);
        
        ChildObject *childObject = [[ChildObject alloc] initWithName:@"John"];
        NSLog(@"%@", childObject->_name);
        
    }
    return 0;
}
