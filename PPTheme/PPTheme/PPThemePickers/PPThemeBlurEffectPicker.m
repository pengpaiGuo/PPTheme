//
//  PPThemeBlurEffectPicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeBlurEffectPicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeBlurEffectPicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id () {
        return [PPThemeManager colorForPath:keyPath];
    }];
}
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(UIBlurEffect * (^)(id))map {
    return [self initWithValue:^id (){
        return map([PPThemeManager valueForPath:keyPath]);
    }];
}
- (instancetype)initWithAppearances:(NSArray<UIBlurEffect *> *)appearances {
    return [self initWithValue:^id (){
        return [PPThemeManager elementsForArray:appearances];
    }];
}

+ (PPThemeBlurEffectPicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeBlurEffectPicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeBlurEffectPicker *)pickerWithKeyPath:(NSString *)keyPath map:(UIBlurEffect * _Nonnull (^)(id _Nonnull))map {
    return [[PPThemeBlurEffectPicker alloc]initWithKeyPath:keyPath map:map];
}
+ (PPThemeBlurEffectPicker *)pickerWithAppearances:(NSArray<UIBlurEffect *> *)appearances {
    return [[PPThemeBlurEffectPicker alloc]initWithAppearances:appearances];
}

@end
