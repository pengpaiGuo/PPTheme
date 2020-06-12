//
//  PPThemeCGColorPicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeCGColorPicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeCGColorPicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id () {
        return [PPThemeManager colorForPath:keyPath];
    }];
}
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(CGColorRef (^)(id))map {
    return [self initWithValue:^id (){
        return (__bridge id)(map([PPThemeManager valueForPath:keyPath]));
    }];
}
- (instancetype)initWithColors:(NSArray *)colors {
    return [self initWithValue:^id (){
        return [PPThemeManager colorElementForArray:colors];
    }];
}
- (instancetype)initWithUIColors:(NSArray<UIColor *> *)colors {
    return [self initWithValue:^id (){
        return [PPThemeManager elementsForArray:colors];
    }];
}

+ (PPThemeCGColorPicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeCGColorPicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeCGColorPicker *)pickerWithKeyPath:(NSString *)keyPath map:(CGColorRef (^)(id))map {
    return [[PPThemeCGColorPicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeCGColorPicker *)pickerWithColors:(NSArray<NSString *> *)colors {
    return [[PPThemeCGColorPicker alloc]initWithColors:colors];
}
+ (PPThemeCGColorPicker *)pickerWithUIColors:(NSArray<UIColor *> *)colors {
    return [[PPThemeCGColorPicker alloc]initWithUIColors:colors];
}

@end
