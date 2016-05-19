//
//  NSString+GetPath.m
//  PathToCache_0420_Exercise
//
//  Created by Fangweiyi on 4/20/16.
//  Copyright © 2016 Fangweiyi. All rights reserved.
//
//
// 在某个范围内容搜索文件夹的路径
// directory:获取哪个文件夹
// domainMask:在哪个范围下获取 NSUserDomainMask:在用户的范围内搜索
// expandTilde是否展开全路径,YES:展开

// NSCachesDirectory 缓存目录
// NSDocumentDirectory 文档目录
// NSTemporaryDirectory() 目录

/**
 *  快速获取不同类型的文件
 *
 *  @param 参数 : 需要获取路径的全文件名
 *
 *  @return 文件全路径
 */

#import "NSString+GetPath.h"

@implementation NSString (GetPath)
+ (NSString *)pathForCacheFile:(NSString *)objName {
    NSString *pathForCache = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
    NSString *completePath = [pathForCache stringByAppendingPathComponent:objName];
    return completePath;
}

+ (NSString *)pathForDocFile:(NSString *)objName {
    NSString *pathForDoc = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *completePath = [pathForDoc stringByAppendingPathComponent:objName];
    return completePath;
}

+ (NSString *)pathForTempFile:(NSString *)objName {
    NSString *pathForTemp = NSTemporaryDirectory();
    NSString *completePath = [pathForTemp stringByAppendingPathComponent:objName];
    return completePath;
}


@end
