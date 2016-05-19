//
//  NSString+GetPath.h
//  PathToCache_0420_Exercise
//
//  Created by Fangweiyi on 4/20/16.
//  Copyright © 2016 Fangweiyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (GetPath)
+ (NSString *)pathForCacheFile:(NSString *)plistName;
+ (NSString *)pathForDocFile:(NSString *)plistName;
+ (NSString *)pathForTempFile:(NSString *)plistName;


@end
