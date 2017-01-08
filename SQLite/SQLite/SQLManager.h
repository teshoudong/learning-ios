//
//  SQLManager.h
//  SQLite
//
//  Created by jason on 2016/12/24.
//  Copyright © 2016年 jason. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"

@interface SQLManager : NSObject
{
    sqlite3 *db;
}

+ (SQLManager *)shareManager;
+ (BOOL)execSql:(NSString *)sql;

@end
