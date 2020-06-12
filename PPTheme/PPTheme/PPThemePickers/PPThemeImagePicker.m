//
//  PPThemeImagePicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeImagePicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeImagePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id () {
        return [PPThemeManager imageForPath:keyPath];
    }];
}
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(UIImage * _Nonnull (^)(id _Nonnull))map {
    return [self initWithValue:^id (){
        return (map([PPThemeManager valueForPath:keyPath]));
    }];
}

- (instancetype)initWithNames:(NSArray<NSString *> *)names {
    return [self initWithValue:^id (){
        return [PPThemeManager imageElementForArray:names];
    }];
}
- (instancetype)initWithImages:(NSArray<UIImage *> *)images {
    return [self initWithValue:^id (){
        return [PPThemeManager elementsForArray:images];
    }];
}


+ (PPThemeImagePicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeImagePicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeImagePicker *)pickerWithKeyPath:(NSString *)keyPath map:(UIImage * _Nullable (^)(id _Nonnull))map {
    return [[PPThemeImagePicker alloc]initWithKeyPath:keyPath map:map];
}

+ (PPThemeImagePicker *)pickerWithNames:(NSArray<NSString *> *)names {
    return [[PPThemeImagePicker alloc]initWithNames:names];
}

+ (PPThemeImagePicker *)pickerWithImages:(NSArray<UIImage *> *)images {
    return [[PPThemeImagePicker alloc]initWithImages:images];
}

@end
