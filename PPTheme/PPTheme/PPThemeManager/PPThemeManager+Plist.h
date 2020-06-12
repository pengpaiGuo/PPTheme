//
//  PPThemeManager+Plist.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeManager.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeManager (Plist)

+ (id)valueForPath:(NSString *)path;
+ (NSString *)stringForPath:(NSString *)path;
+ (NSNumber *)numberForPath:(NSString *)path;
+ (NSDictionary *)dictionaryForPath:(NSString *)path;
+ (UIColor *)colorForPath:(NSString *)path;
+ (UIImage *)imageForPath:(NSString *)path;
+ (UIFont *)fontForPath:(NSString *)path;
+ (UIFont *)fontForString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
