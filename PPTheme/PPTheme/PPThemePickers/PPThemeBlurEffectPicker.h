//
//  PPThemeBlurEffectPicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeBlurEffectPicker : PPThemePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(UIBlurEffect * (^)(id))map;
- (instancetype)initWithAppearances:(NSArray<UIBlurEffect *> *)appearances;

+ (PPThemeBlurEffectPicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeBlurEffectPicker *)pickerWithKeyPath:(NSString *)keyPath map:(UIBlurEffect * (^ _Nonnull)(id))map;
+ (PPThemeBlurEffectPicker *)pickerWithAppearances:(NSArray<UIBlurEffect *> *)appearances;

@end

NS_ASSUME_NONNULL_END
