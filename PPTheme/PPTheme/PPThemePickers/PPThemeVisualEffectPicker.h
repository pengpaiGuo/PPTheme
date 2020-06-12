//
//  PPThemeVisualEffectPicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeVisualEffectPicker : PPThemePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithStringEffects:(NSArray<NSString *> *)effects;

+ (PPThemeVisualEffectPicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeVisualEffectPicker *)pickerWithStringEffects:(NSArray<NSString *> *)effects;

@end

NS_ASSUME_NONNULL_END
