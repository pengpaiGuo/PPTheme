//
//  PPThemeColorPicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeColorPicker.h"
#import "PPThemeManager+Index.h"
#import "PPThemeManager+Plist.h"

@implementation PPThemeColorPicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id () {
        return [PPThemeManager colorForPath:keyPath];
    }];
}
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(UIColor * (^)(id))map {
    return [self initWithValue:^id (){
        return map([PPThemeManager valueForPath:keyPath]);
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

+ (PPThemeColorPicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeColorPicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeColorPicker *)pickerWithKeyPath:(NSString *)keyPath map:(UIColor * (^)(id))map {
    return [[PPThemeColorPicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeColorPicker *)pickerWithColors:(NSArray<NSString *> *)colors {
    return [[PPThemeColorPicker alloc]initWithColors:colors];
}
+ (PPThemeColorPicker *)pickerWithUIColors:(NSArray<UIColor *> *)colors {
    return [[PPThemeColorPicker alloc]initWithUIColors:colors];
}

@end
