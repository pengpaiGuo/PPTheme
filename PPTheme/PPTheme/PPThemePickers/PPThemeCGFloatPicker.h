//
//  PPThemeCGFloatPicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeCGFloatPicker : PPThemePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(CGFloat (^)(id))map;
- (instancetype)initWithFloats:(NSArray<NSNumber *> *)floats;

+ (PPThemeCGFloatPicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeCGFloatPicker *)pickerWithFloats:(NSArray<NSNumber *> *)floats;

@end

NS_ASSUME_NONNULL_END
