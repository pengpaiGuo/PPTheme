//
//  PPThemeStringAttrPicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeStringAttrPicker : PPThemePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(NSDictionary<NSAttributedStringKey, id> * (^)(id))map;
- (instancetype)initWithAttributes:(NSArray<NSDictionary<NSAttributedStringKey, id> *> *)attributes;

+ (PPThemeStringAttrPicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeStringAttrPicker *)pickerWithKeyPath:(NSString *)keyPath map:(NSDictionary<NSAttributedStringKey, id> * (^)(id))map;
+ (PPThemeStringAttrPicker *)pickerWithAttributes:(NSArray<NSDictionary<NSAttributedStringKey, id> *> *)attributes;

@end

NS_ASSUME_NONNULL_END
