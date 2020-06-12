//
//  PPThemeKeyboardAppearPicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeKeyboardAppearPicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeKeyboardAppearPicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    
    return [self initWithValue:^id (){
        return @([PPThemeKeyboardAppearPicker getStyleWithString:[PPThemeManager stringForPath:keyPath]]);
    }];
}

- (instancetype)initWithStringStyles:(NSArray<NSString *> *)styles {
    return [self initWithValue:^id (){
        return @([PPThemeKeyboardAppearPicker getStyleWithString:[PPThemeManager elementsForArray:styles]]);
    }];
}

+ (PPThemeKeyboardAppearPicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeKeyboardAppearPicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeKeyboardAppearPicker *)pickerWithStringStyles:(NSArray<NSString *> *)styles {
    return [[PPThemeKeyboardAppearPicker alloc]initWithStringStyles:styles];
}

+ (UIKeyboardAppearance)getStyleWithString:(NSString *)styleString {
    
    if ([[styleString lowercaseString]containsString:@"light"]) {
        return UIKeyboardAppearanceLight;
    }else if ([[styleString lowercaseString]containsString:@"dark"]) {
        return UIKeyboardAppearanceDark;
    }
    return UIKeyboardAppearanceDefault;
}

@end
