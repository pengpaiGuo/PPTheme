//
//  PPThemeDictionaryPicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeDictionaryPicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeDictionaryPicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id () {
        return [PPThemeManager valueForPath:keyPath];
    }];
}
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(NSDictionary<NSString *,id> * _Nonnull (^)(id _Nonnull))map {
    return [self initWithValue:^id (){
        return map([PPThemeManager valueForPath:keyPath]);
    }];
}
- (instancetype)initWithDicts:(NSArray<NSDictionary<NSString *,id> *> *)dicts {
    return [self initWithValue:^id (){
        return [PPThemeManager elementsForArray:dicts];
    }];
}

+ (PPThemeDictionaryPicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeDictionaryPicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeDictionaryPicker *)pickerWithKeyPath:(NSString *)keyPath map:(NSDictionary<NSString *,id> * _Nullable (^)(id _Nonnull))map {
    return [[PPThemeDictionaryPicker alloc]initWithKeyPath:keyPath map:map];
}
+ (PPThemeDictionaryPicker *)pickerWithDicts:(NSArray<NSDictionary<NSString *,id> *> *)dicts {
    return [[PPThemeDictionaryPicker alloc]initWithDicts:dicts];
}

@end
