//
//  PPThemeFontPicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeFontPicker.h"
#import "PPThemeManager+Index.h"
#import "PPThemeManager+Plist.h"

@implementation PPThemeFontPicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id () {
        return [PPThemeManager fontForPath:keyPath];
    }];
}

- (instancetype)initWithKeyPath:(NSString *)keyPath map:(UIFont * _Nonnull (^)(id _Nonnull))map {
    return [self initWithValue:^id (){
        return (map([PPThemeManager valueForPath:keyPath]));
    }];
}

- (instancetype)initWithFonts:(NSArray<UIFont *> *)fonts {
    return [self initWithValue:^id (){
        return [PPThemeManager elementsForArray:fonts];
    }];
}

+ (PPThemeFontPicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeFontPicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeFontPicker *)pickerWithKeyPath:(NSString *)keyPath map:(UIFont * _Nullable (^)(id _Nonnull))map {
    return [[PPThemeFontPicker alloc]initWithKeyPath:keyPath map:map];
}
+ (PPThemeFontPicker *)pickerWithFonts:(NSArray<UIFont *> *)fonts {
    return [[PPThemeFontPicker alloc]initWithFonts:fonts];
}

@end
