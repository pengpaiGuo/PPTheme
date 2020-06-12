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

    [MyThemeTool setThemeWithJsonIndex:type];

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

+ (void)setThemeWithJsonIndex:(PPThemeType)index {
    
    switch (index) {
        case 0:
            [PPThemeManager setThemeWithJsonInMainBundle:@"Red"];
            break;
        case 1:
            [PPThemeManager setThemeWithJsonInMainBundle:@"Yellow"];
            break;
        case 2:
            [PPThemeManager setThemeWithJsonInMainBundle:@"Blue"];
            break;
        case 3:
            [PPThemeManager setThemeWithJsonInMainBundle:@"Night"];
            break;
        default:
            break;
    }
    [PPThemeManager setThemeWithIndex:index];

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
