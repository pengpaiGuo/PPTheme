//
//  PPThemeActivityIViewStylePicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeActivityIViewStylePicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeActivityIViewStylePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id (){
        return @([PPThemeActivityIViewStylePicker getStyleWithString:[PPThemeManager stringForPath:keyPath]]);
    }];
}
- (instancetype)initWithKeyPath:(NSString *)keyPath map:(UIActivityIndicatorViewStyle (^)(id))map {
    return [self initWithValue:^id (){
        return @(map([PPThemeManager valueForPath:keyPath]));
    }];
}
- (instancetype)initWithStyles:(NSArray *)styles {
    return [self initWithValue:^id (){
        return [PPThemeManager elementsForArray:styles];
    }];
}
- (instancetype)initWithStringStyles:(NSArray<NSString *> *)styles {
    return [self initWithValue:^id (){
        return @([PPThemeActivityIViewStylePicker getStyleWithString:[PPThemeManager elementsForArray:styles]]);
    }];
}



+ (PPThemeActivityIViewStylePicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeActivityIViewStylePicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeActivityIViewStylePicker *)pickerWithStringStyles:(NSArray<NSString *> *)styles {
    return [[PPThemeActivityIViewStylePicker alloc]initWithStyles:styles];
}

+ (UIActivityIndicatorViewStyle)getStyleWithString:(NSString *)styleString {
    
    if ([[styleString lowercaseString]containsString:@"whitelarge"]) {
        return UIActivityIndicatorViewStyleWhiteLarge;
    }else if ([[styleString lowercaseString]containsString:@"white"]) {
        return UIActivityIndicatorViewStyleWhite;
    }else if ([[styleString lowercaseString]containsString:@"large"]) {
        if (@available(iOS 13.0, *)) {
            return UIActivityIndicatorViewStyleLarge;
        }
    }else if ([[styleString lowercaseString]containsString:@"medium"]) {
        if (@available(iOS 13.0, *)) {
            return UIActivityIndicatorViewStyleMedium;
        }
    }
    return UIActivityIndicatorViewStyleGray;
}

@end
