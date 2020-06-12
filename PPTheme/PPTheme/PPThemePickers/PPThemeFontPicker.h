//
//  PPThemeFontPicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeFontPicker : PPThemePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(UIFont *(^)(id))map;
- (instancetype)initWithFonts:(NSArray<UIFont *> *)fonts;

+ (PPThemeFontPicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeFontPicker *)pickerWithKeyPath:(NSString *)keyPath map:(UIFont * (^)(id))map;
+ (PPThemeFontPicker *)pickerWithFonts:(NSArray<UIFont *> *)fonts;

@end

NS_ASSUME_NONNULL_END
