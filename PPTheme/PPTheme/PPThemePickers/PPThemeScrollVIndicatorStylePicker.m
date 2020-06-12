//
//  PPThemeScrollVIndicatorStylePicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeScrollVIndicatorStylePicker.h"
#import "PPThemeManager+Plist.h"
#import "PPThemeManager+Index.h"

@implementation PPThemeScrollVIndicatorStylePicker

- (instancetype)initWithKeyPath:(NSString *)keyPath {
    return [self initWithValue:^id (){
        return @([PPThemeScrollVIndicatorStylePicker getStyleWithString:[PPThemeManager stringForPath:keyPath]]);
    }];
}

- (instancetype)initWithStringStyles:(NSArray<NSString *> *)styles {
    return [self initWithValue:^id (){
        return @([PPThemeScrollVIndicatorStylePicker getStyleWithString:[PPThemeManager elementsForArray:styles]]);
    }];
}

+ (PPThemeScrollVIndicatorStylePicker *)pickerWithKeyPath:(NSString *)keyPath {
    return [[PPThemeScrollVIndicatorStylePicker alloc]initWithKeyPath:keyPath];
}
+ (PPThemeScrollVIndicatorStylePicker *)pickerWithStringStyles:(NSArray<NSString *> *)styles {
    return [[PPThemeScrollVIndicatorStylePicker alloc]initWithStringStyles:styles];
}

+ (UIScrollViewIndicatorStyle)getStyleWithString:(NSString *)styleString {
    
    if ([[styleString lowercaseString]containsString:@"white"]) {
        return UIScrollViewIndicatorStyleWhite;
    }else if ([[styleString lowercaseString]containsString:@"black"]) {
        return UIScrollViewIndicatorStyleBlack;
    }
    return UIScrollViewIndicatorStyleDefault;
}

@end
