//
//  PPThemeCGFloatPicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeCGFloatPicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeCGFloatPicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id () {
        return [PPThemeManager numberForPath:keyPath];
    }];
}
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(CGFloat (^)(id))map {
    return [self initWithValue:^id (){
        return @(map([PPThemeManager valueForPath:keyPath]));
    }];
}
- (instancetype)initWithFloats:(NSArray *)floats {
    return [self initWithValue:^id (){
        return [PPThemeManager elementsForArray:floats];
    }];
}

+ (PPThemeCGFloatPicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeCGFloatPicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeCGFloatPicker *)pickerWithKeyPath:(NSString *)keyPath map:(CGFloat  (^)(id))map {
    return [[PPThemeCGFloatPicker alloc]initWithKeyPath:keyPath map:map];
}
+ (PPThemeCGFloatPicker *)pickerWithFloats:(NSArray<NSNumber *> *)floats {
    return [[PPThemeCGFloatPicker alloc]initWithFloats:floats];
}

@end
