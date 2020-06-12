//
//  PPThemeManager.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PPThemeUpdateNotification @"PPThemeUpdateNotification"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeManager : NSObject

+ (void)setAnimationDuration:(double)value;
+ (double)animationDuration;

+ (void)setThemeWithIndex:(NSInteger)index;
+ (NSInteger)currentThemeIndex;

+ (void)setNightThemeIndex:(NSInteger)index;

+ (NSInteger)lastLightThemeIndex;

+ (NSDictionary *)currentTheme;

+ (void)setThemeWithPlistInMainBundle:(NSString *)plistName;
+ (void)setThemeWithPlistInSandbox:(NSString *)plistName path:(NSURL *)path;
+ (void)setThemeWithJsonInMainBundle:(NSString *)jsonName;
+ (void)setThemeWithJsonInSandbox:(NSString *)jsonName path:(NSURL *)path;
+ (void)setThemeWithDictInMainBundle:(NSDictionary *)dict;
+ (void)setThemeWithDictInSandbox:(NSDictionary *)dict path:(NSURL *)path;

+ (BOOL)isNight;
+ (void)restoreLastTheme;
+ (void)saveLastTheme;

@end

NS_ASSUME_NONNULL_END
