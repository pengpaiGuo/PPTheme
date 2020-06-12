//
//  PPThemeVisualEffectPicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeVisualEffectPicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeVisualEffectPicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id (){
        return [PPThemeVisualEffectPicker getEffectWithString:[PPThemeManager stringForPath:keyPath]];
    }];
}
- (instancetype)initWithStringEffects:(NSArray<NSString *> *)effects {
    return [self initWithValue:^id (){
        return [PPThemeVisualEffectPicker getEffectWithString:[PPThemeManager elementsForArray:effects]];
    }];
}

+ (PPThemeVisualEffectPicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeVisualEffectPicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeVisualEffectPicker *)pickerWithStringEffects:(NSArray<NSString *> *)effects {
    return [[PPThemeVisualEffectPicker alloc]initWithStringEffects:effects];
}

+ (UIVisualEffect *)getEffectWithString:(NSString *)styleString {
    
    NSString * string = [styleString stringByReplacingOccurrencesOfString:@"_" withString:@""];
    UIBlurEffectStyle style = UIBlurEffectStyleLight;
    if ([string containsString:@"dark"]) {
        style = UIBlurEffectStyleDark;
    }else if ([string containsString:@"extralight"]) {
        style = UIBlurEffectStyleExtraLight;
    }else if ([string containsString:@"prominent"]) {
        if (@available(iOS 10.0, *)) {
            style = UIBlurEffectStyleProminent;
        }
    }else if ([string containsString:@"regular"]) {
        if (@available(iOS 10.0, *)) {
            style = UIBlurEffectStyleRegular;
        }
    }
    return [UIBlurEffect effectWithStyle:style];
}
@end
