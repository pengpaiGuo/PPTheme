//
//  PPThemeBarStylePicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeBarStylePicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeBarStylePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id (){
        return @([PPThemeBarStylePicker getStyleWithString:[PPThemeManager stringForPath:keyPath]]);
    }];
}
- (instancetype)initWithStringStyles:(NSArray<NSString *> *)styles {
    return [self initWithValue:^id (){
        return @([PPThemeBarStylePicker getStyleWithString:[PPThemeManager elementsForArray:styles]]);
    }];
}

+ (PPThemeBarStylePicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeBarStylePicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeBarStylePicker *)pickerWithStringStyles:(NSArray<NSString *> *)styles {
    return [[PPThemeBarStylePicker alloc]initWithStringStyles:styles];
}

+ (UIBarStyle)getStyleWithString:(NSString *)styleString {
    if ([[styleString lowercaseString]containsString:@"black"]) {
        return UIBarStyleBlack;
    }
    return UIBarStyleDefault;
}

@end
