//
//  PPThemeManager+Plist.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeManager+Plist.h"
#import <UIKit/UIKit.h>

@implementation PPThemeManager (Plist)

+ (id)valueForPath:(NSString *)path {
    if (self.currentTheme) {
        return [self.currentTheme valueForKeyPath:path];
    }
    return @"";
}

+ (NSString *)stringForPath:(NSString *)path {
    if (self.currentTheme) {
        return [self.currentTheme valueForKeyPath:path];
    }
    return @"";
}

+ (NSNumber *)numberForPath:(NSString *)path {
    if (self.currentTheme) {
        return [self.currentTheme valueForKeyPath:path];
    }
    return [NSNumber numberWithInteger:0];
}

+ (NSDictionary *)dictionaryForPath:(NSString *)path {
    if (self.currentTheme) {
        return [self.currentTheme valueForKeyPath:path];
    }
    return [NSDictionary dictionary];
}

+ (UIColor *)colorForPath:(NSString *)path {
    NSString * hexStr = [self stringForPath:path];
    return [PPThemeManager themeColorWithHex:hexStr];
}

+ (UIImage *)imageForPath:(NSString *)path {
    NSString * imageStr = [self stringForPath:path];
    return [UIImage imageNamed:imageStr];
}

+ (UIFont *)fontForPath:(NSString *)path {
    NSString * fontStr = [self stringForPath:path];
    return [self fontForString:fontStr];
}

+ (UIFont *)fontForString:(NSString *)string {
    if (string && string.length) {
        NSArray * elements = [string componentsSeparatedByString:@","];
        if (elements.count == 2) {
            return [UIFont fontWithName:elements[0] size:[elements[1] doubleValue]];
        }
        if ([string doubleValue] > 0) {
            return [UIFont systemFontOfSize:[string doubleValue]];
        }
    }
    return [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
}

@end
