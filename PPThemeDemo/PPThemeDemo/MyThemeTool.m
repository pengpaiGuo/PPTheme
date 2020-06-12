//
//  MyThemeTool.m
//  PPThemeDemo
//
//  Created by Pai on 2020/6/11.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "MyThemeTool.h"

@implementation MyThemeTool

+ (void)switchTo:(PPThemeType)type {

    [PPThemeManager setThemeWithIndex:type];
   
}

+ (void)switchToNext {
    NSInteger next = [PPThemeManager currentThemeIndex] + 1;
    if (next > 2) {
        next = 0;
    }
    [self switchTo:next];
}

+ (void)switchNight:(BOOL)isToNight {
    [self switchTo:isToNight ? PPThemeTypeNight : [PPThemeManager lastLightThemeIndex]];
}

+ (BOOL)isNight {
    return [PPThemeManager isNight];
}

+ (void)restoreLastTheme {
    [PPThemeManager restoreLastTheme];
}

+ (void)saveLastTheme {
    [PPThemeManager saveLastTheme];
}

@end
