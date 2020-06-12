//
//  MyThemeTool.h
//  PPThemeDemo
//
//  Created by Pai on 2020/6/11.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PPTheme/PPTheme.h>

#define globalStatusBarStringStyles @[@"Default", @"LightContent", @"LightContent", @"DarkContent"]
#define globalBackgroundColorPicker [PPThemeColorPicker pickerWithColors:@[@"#ffffff", @"#ffffff", @"#ffffff", @"#292b38"]]
#define globalTextColorPicker [PPThemeColorPicker pickerWithColors:@[@"#EB4F38", @"#F4C600", @"#56ABE4", @"#ECF0F1"]]

#define globalBarTextColors @[@"#FFFFFF", @"#000000", @"#FFFFFF", @"#FFFFFF"]
#define globalBarTextColorPicker [PPThemeColorPicker pickerWithColors:globalBarTextColors]
#define globalBarTintColorPicker [PPThemeColorPicker pickerWithColors: @[@"#EB4F38", @"#F4C600", @"#56ABE4", @"#01040D"]]

typedef NS_ENUM(NSInteger,PPThemeType) {
    PPThemeTypeRed = 0,
    PPThemeTypeYellow,
    PPThemeTypeBlue,
    PPThemeTypeNight
};

NS_ASSUME_NONNULL_BEGIN

@interface MyThemeTool : NSObject

+ (void)switchTo:(PPThemeType)type;
+ (void)switchToNext;
+ (void)switchNight:(BOOL)isToNight;

+ (BOOL)isNight;

+ (void)restoreLastTheme;
+ (void)saveLastTheme;

@end

NS_ASSUME_NONNULL_END
