//
//  PPThemeNavBarAppearPicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

API_AVAILABLE(ios(13.0)) @interface PPThemeNavBarAppearPicker : PPThemePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(UINavigationBarAppearance * (^)(id))map;
- (instancetype)initWithAppearances:(NSArray<UINavigationBarAppearance *> *)appearances;

+ (PPThemeNavBarAppearPicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeNavBarAppearPicker *)pickerWithKeyPath:(NSString *)keyPath map:(UINavigationBarAppearance * (^)(id))map;
+ (PPThemeNavBarAppearPicker *)pickerWithAppearances:(NSArray<UINavigationBarAppearance *> *)appearances;

@end

NS_ASSUME_NONNULL_END
