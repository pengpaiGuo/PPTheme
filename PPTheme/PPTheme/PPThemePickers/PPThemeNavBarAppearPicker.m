//
//  PPThemeNavBarAppearPicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeNavBarAppearPicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeNavBarAppearPicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id () {
        return [PPThemeManager valueForPath:keyPath];
    }];
}

- (instancetype)initWithKeyPath:(NSString *)keyPath map:(UINavigationBarAppearance * _Nonnull (^)(id _Nonnull))map {
    return [self initWithValue:^id (){
        return (map([PPThemeManager valueForPath:keyPath]));
    }];
}

- (instancetype)initWithAppearances:(NSArray<UINavigationBarAppearance *> *)appearances{
    return [self initWithValue:^id (){
        return [PPThemeManager elementsForArray:appearances];
    }];
}

+ (PPThemeNavBarAppearPicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeNavBarAppearPicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeNavBarAppearPicker *)pickerWithKeyPath:(NSString *)keyPath map:(UINavigationBarAppearance * _Nullable (^)(id _Nonnull))map {
    return [[PPThemeNavBarAppearPicker alloc]initWithKeyPath:keyPath map:map];
}
+ (PPThemeNavBarAppearPicker *)pickerWithAppearances:(NSArray<UINavigationBarAppearance *> *)appearances {
    return [[PPThemeNavBarAppearPicker alloc]initWithAppearances:appearances];
}

@end
