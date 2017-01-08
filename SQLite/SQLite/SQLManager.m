//
//  SQLManager.m
//  SQLite
//
//  Created by jason on 2016/12/24.
//  Copyright © 2016年 jason. All rights reserved.
//

#import "SQLManager.h"
#import "sqlite3.h"

@implementation SQLManager

#define TABLE_NAME (@"table.sqlite")

static SQLManager *manager = nil;

+ (SQLManager *)shareManager {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        manager = [[self alloc] init];
        [manager createDataBaseTableIfNeed];
    });
    return manager;
}

- (NSString *)sqlFilePath {
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [documentPaths firstObject];
    NSString *filePath = [documentPath stringByAppendingPathComponent:TABLE_NAME];
    return filePath;
}

- (void)createDataBaseTableIfNeed {
    NSString *filePath = [self sqlFilePath];
    if (sqlite3_open([filePath UTF8String], &db) == SQLITE_OK) {
        NSString *createTable = @"CREATE TABLE IF NOT EXISTS people(id TEXT PRIMARY KEY, name TEXT)";
        /*
         第一个参数 db对象
         第二个参数 sql语句
         第三个参数和第四个参数 回调函数和回调函数的参数
         第五个参数 错误信息
         */
        if (sqlite3_exec(db, [createTable UTF8String], NULL, NULL, NULL)) {
            NSLog(@"创建people表成功");
        } else {
            NSLog(@"创建people表失败");
        }
    } else {
        NSLog(@"打开数据库失败");
    }
    sqlite3_close(db);
}

- (BOOL)execSql:sql {
    NSString *filePath = [self sqlFilePath];
    if (sqlite3_open([filePath UTF8String], &db)) {
        
    } else {
        NSLog(@"打开数据库失败");
    }
    return YES;
}

@end
