//
//  PPThemeManager.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeManager.h"

#define LastThemeIndexKey @"LastThemeIndexKey"
#define LastLightThemeIndexKey @"LastLightThemeIndexKey"

static double animationDuration = 0.3;

static NSDictionary *currentTheme;

static NSInteger currentThemeIndex = 0;
static NSInteger nightThemeIndex = -1;

static NSURL * currentThemePath;

@implementation PPThemeManager

+ (void)setAnimationDuration:(double)value {
    animationDuration = value;
}
+ (double)animationDuration {
    return animationDuration;
}

+ (void)setThemeWithIndex:(NSInteger)index {
    currentThemeIndex = index;
    [self updateTheme];
}
+ (NSInteger)currentThemeIndex {
    return currentThemeIndex;
}

+ (void)setNightThemeIndex:(NSInteger)index {
    nightThemeIndex = index;
}

+ (NSDictionary *)currentTheme {
    return currentTheme;
}

+ (void)setThemeWithPlistInMainBundle:(NSString *)plistName {
    NSString * file = [self plistPath:plistName isMainBundle:YES];
    if (!file) {return;}
    NSDictionary * dict = [NSDictionary dictionaryWithContentsOfFile:file];
    [self setThemeWithDictInMainBundle:dict];
}
+(void)setThemeWithPlistInSandbox:(NSString *)plistName path:(NSURL *)path {
    NSString * file = [self plistPath:[path.path stringByAppendingPathComponent:plistName] isMainBundle:NO];
    if (!file) {return;}
    NSDictionary * dict = [NSDictionary dictionaryWithContentsOfFile:file];
    [self setThemeWithDictInSandbox:dict path:path];
}

+ (void)setThemeWithJsonInMainBundle:(NSString *)jsonName {
    NSString * file = [self jsonPath:jsonName isMainBundle:YES];
    if (!file) {return;}
    NSData * jsonData = [NSData dataWithContentsOfURL:[NSURL fileURLWithPath:file]];
    NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingFragmentsAllowed error:nil];
    [self setThemeWithDictInMainBundle:dict];
}
+ (void)setThemeWithJsonInSandbox:(NSString *)jsonName path:(NSURL *)path {
    NSString * file = [self jsonPath:[path.path stringByAppendingPathComponent:jsonName] isMainBundle:NO];
    if (!file) {return;}
    NSData * jsonData = [NSData dataWithContentsOfURL:[NSURL fileURLWithPath:file]];
    NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingFragmentsAllowed error:nil];
    [self setThemeWithDictInSandbox:dict path:path];
}

+ (void)setThemeWithDictInMainBundle:(NSDictionary *)dict {
    currentTheme = dict;
    currentThemePath = nil;
    [[NSNotificationCenter defaultCenter]postNotificationName:PPThemeUpdateNotification object:nil];
}
+ (void)setThemeWithDictInSandbox:(NSDictionary *)dict path:(NSURL *)path {
    currentTheme = dict;
    currentThemePath = path;
    [[NSNotificationCenter defaultCenter]postNotificationName:PPThemeUpdateNotification object:nil];
}

+ (NSString *)plistPath:(NSString *)name isMainBundle:(BOOL)isMain{
    return [self filePath:name type:@"plist" isMainBundle:isMain];
}
+ (NSString *)jsonPath:(NSString *)name isMainBundle:(BOOL)isMain{
    return [self filePath:name type:@"json" isMainBundle:isMain];
}

+ (NSString *)filePath:(NSString *)name type:(NSString *)type isMainBundle:(BOOL)isMain {
    if (isMain) {
        return [[NSBundle mainBundle]pathForResource:name ofType:type];
    }
    if (![name containsString:[NSString stringWithFormat:@".%@",type]]) {
        name = [NSString stringWithFormat:@"%@.%@",name,type];
    }
    NSString * docsdir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];

    return [docsdir stringByAppendingPathComponent:name];
}


+ (BOOL)isNight {
    return [self currentThemeIndex] == nightThemeIndex;
}

+ (NSInteger)lastLightThemeIndex {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults integerForKey:LastLightThemeIndexKey];
}

+ (void)updateTheme {
    [[NSNotificationCenter defaultCenter]postNotificationName:PPThemeUpdateNotification object:nil];
    [self saveLastTheme];
}

+ (void)restoreLastTheme {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [self setThemeWithIndex:[defaults integerForKey:LastThemeIndexKey]];
}

+ (void)saveLastTheme {
    if (![self isNight]) {
        [self saveLastLightTheme];
    }
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:[PPThemeManager currentThemeIndex] forKey:LastThemeIndexKey];
}

+ (void)saveLastLightTheme {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:[PPThemeManager currentThemeIndex] forKey:LastLightThemeIndexKey];
}

@end
