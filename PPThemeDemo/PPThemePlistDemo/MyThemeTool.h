//
//  MyThemeTool.h
//  PPThemeDemo
//
//  Created by Pai on 2020/6/11.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PPTheme/PPTheme.h>

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
