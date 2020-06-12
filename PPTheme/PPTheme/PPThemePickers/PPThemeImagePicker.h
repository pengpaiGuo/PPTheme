//
//  PPThemeImagePicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeImagePicker : PPThemePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(UIImage * (^)(id))map;
- (instancetype)initWithNames:(NSArray<NSString *> *)names;
- (instancetype)initWithImages:(NSArray<UIImage *> *)images;

+ (PPThemeImagePicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeImagePicker *)pickerWithKeyPath:(NSString *)keyPath map:(UIImage * (^)(id))map;
+ (PPThemeImagePicker *)pickerWithNames:(NSArray<NSString *> *)names;
+ (PPThemeImagePicker *)pickerWithImages:(NSArray<UIImage *> *)images;

@end

NS_ASSUME_NONNULL_END
