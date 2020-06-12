//
//  PPThemeColorPicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeColorPicker : PPThemePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(UIColor * (^)(id))map;
- (instancetype)initWithColors:(NSArray<NSString *> *)colors;
- (instancetype)initWithUIColors:(NSArray<UIColor *> *)colors;

+ (PPThemeColorPicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeColorPicker *)pickerWithKeyPath:(NSString *)keyPath map:(UIColor * (^)(id))map;
+ (PPThemeColorPicker *)pickerWithColors:(NSArray<NSString *> *)colors;
+ (PPThemeColorPicker *)pickerWithUIColors:(NSArray<UIColor *> *)colors;

@end

NS_ASSUME_NONNULL_END
