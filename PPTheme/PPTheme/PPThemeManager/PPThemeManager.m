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

+ (UIColor *)themeColorWithHex:(id)hexString {
    if (![hexString isKindOfClass:[NSString class]] || [hexString length] == 0) {
        return [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:1.0f];
    }
    
    const char *s = [hexString cStringUsingEncoding:NSASCIIStringEncoding];
    if (*s == '#') {
        ++s;
    }
    unsigned long long value = strtoll(s, nil, 16);
    int r, g, b, a;
    switch (strlen(s)) {
        case 2:
            // xx
            r = g = b = (int)value;
            a = 255;
            break;
        case 3:
            // RGB
            r = ((value & 0xf00) >> 8);
            g = ((value & 0x0f0) >> 4);
            b = ((value & 0x00f) >> 0);
            r = r * 16 + r;
            g = g * 16 + g;
            b = b * 16 + b;
            a = 255;
            break;
        case 6:
            // RRGGBB
            r = (value & 0xff0000) >> 16;
            g = (value & 0x00ff00) >>  8;
            b = (value & 0x0000ff) >>  0;
            a = 255;
            break;
        default:
            // RRGGBBAA
            r = (value & 0xff000000) >> 24;
            g = (value & 0x00ff0000) >> 16;
            b = (value & 0x0000ff00) >>  8;
            a = (value & 0x000000ff) >>  0;
            break;
    }
    return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a/255.0f];
}

@end
