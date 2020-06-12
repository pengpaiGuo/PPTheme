//
//  PPThemeDictionaryPicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeDictionaryPicker : PPThemePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath;
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(NSDictionary<NSString *, id> * (^)(id))map;
- (instancetype)initWithDicts:(NSArray<NSDictionary<NSString *, id> *> *)dicts;

+ (PPThemeDictionaryPicker *)pickerWithKeyPath:(NSString *)keyPath;
+ (PPThemeDictionaryPicker *)pickerWithKeyPath:(NSString *)keyPath map:(NSDictionary<NSString *, id> * _Nullable (^)(id))map;
+ (PPThemeDictionaryPicker *)pickerWithDicts:(NSArray<NSDictionary<NSString *, id> *> *)dicts;

@end

NS_ASSUME_NONNULL_END
