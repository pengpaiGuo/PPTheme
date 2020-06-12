//
//  PPThemeStatusBarStylePicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeStatusBarStylePicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeStatusBarStylePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id (){
        return @([PPThemeStatusBarStylePicker getStyleWithString:[PPThemeManager stringForPath:keyPath]]);
    }];
}

- (instancetype)initWithStringStyles:(NSArray<NSString *> *)styles {
    return [self initWithValue:^id (){
        return @([PPThemeStatusBarStylePicker getStyleWithString:[PPThemeManager elementsForArray:styles]]);
    }];
}

+ (PPThemeStatusBarStylePicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeStatusBarStylePicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeStatusBarStylePicker *)pickerWithStringStyles:(NSArray<NSString *> *)styles {
    return [[PPThemeStatusBarStylePicker alloc]initWithStringStyles:styles];
}

+ (UIStatusBarStyle)getStyleWithString:(NSString *)styleString {
    
    if ([[styleString lowercaseString]containsString:@"lightcontent"]) {
        return UIStatusBarStyleLightContent;
    }else if ([[styleString lowercaseString]containsString:@"darkcontent"]) {
        if (@available(iOS 13.0, *)) {
            return UIStatusBarStyleDarkContent;
        }
    }
    return UIStatusBarStyleDefault;
}

@end
