//
//  PPThemeBarStylePicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeBarStylePicker : PPThemePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithStringStyles:(NSArray<NSString *> *)styles;

+ (PPThemeBarStylePicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeBarStylePicker *)pickerWithStringStyles:(NSArray<NSString *> *)styles;

@end

NS_ASSUME_NONNULL_END
