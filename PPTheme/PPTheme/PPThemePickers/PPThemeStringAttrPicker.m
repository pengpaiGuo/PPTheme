//
//  PPThemeStringAttrPicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeStringAttrPicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeStringAttrPicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id () {
        return [PPThemeManager valueForPath:keyPath];
    }];
}
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(NSDictionary<NSAttributedStringKey,id> * _Nonnull (^)(id _Nonnull))map {
    return [self initWithValue:^id (){
        return (map([PPThemeManager valueForPath:keyPath]));
    }];
}
- (instancetype)initWithAttributes:(NSArray<NSDictionary<NSAttributedStringKey,id> *> *)attributes {
    return [self initWithValue:^id (){
        return [PPThemeManager elementsForArray:attributes];
    }];
}

+ (PPThemeStringAttrPicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeStringAttrPicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeStringAttrPicker *)pickerWithKeyPath:(NSString *)keyPath map:(NSDictionary<NSAttributedStringKey,id> * _Nonnull (^)(id _Nonnull))map {
    return [[PPThemeStringAttrPicker alloc]initWithKeyPath:keyPath map:map];
}
+ (PPThemeStringAttrPicker *)pickerWithAttributes:(NSArray<NSDictionary<NSAttributedStringKey,id> *> *)attributes {
    return [[PPThemeStringAttrPicker alloc]initWithAttributes:attributes];
}
@end
