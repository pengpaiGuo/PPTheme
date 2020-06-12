//
//  PPThemeStatusBarStylePicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeStatusBarStylePicker : PPThemePicker

@property (nonatomic, assign) BOOL animated;

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithStringStyles:(NSArray<NSString *> *)styles;

+ (PPThemeStatusBarStylePicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeStatusBarStylePicker *)pickerWithStringStyles:(NSArray<NSString *> *)styles;


@end

NS_ASSUME_NONNULL_END
