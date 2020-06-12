//
//  PPThemeCGColorPicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"
#import "PPThemeManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeCGColorPicker : PPThemePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(CGColorRef (^)(id))map;
- (instancetype)initWithColors:(NSArray<NSString *> *)colors;
- (instancetype)initWithUIColors:(NSArray<UIColor *> *)colors;

+ (PPThemeCGColorPicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeCGColorPicker *)pickerWithKeyPath:(NSString *)keyPath map:(CGColorRef (^)(id))map;
+ (PPThemeCGColorPicker *)pickerWithColors:(NSArray<NSString *> *)colors;
+ (PPThemeCGColorPicker *)pickerWithUIColors:(NSArray<UIColor *> *)colors;


@end

NS_ASSUME_NONNULL_END
