//
//  PPThemeActivityIViewStylePicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeActivityIViewStylePicker : PPThemePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(UIActivityIndicatorViewStyle (^)(id))map;
- (instancetype)initWithStringStyles:(NSArray<NSString *> *)styles;

+ (PPThemeActivityIViewStylePicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeActivityIViewStylePicker *)pickerWithStringStyles:(NSArray<NSString *> *)styles;

@end

NS_ASSUME_NONNULL_END
