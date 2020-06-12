//
//  PPThemeManager+Index.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeManager+Index.h"
#import "UIColor+PPHex.h"

@implementation PPThemeManager (Index)

+ (UIColor *)colorElementForArray:(NSArray *)array {
    NSInteger current = [self currentThemeIndex];
    return [UIColor colorWithHexString:array[current]];
}

+ (UIImage *)imageElementForArray:(NSArray *)array {
    NSInteger current = [self currentThemeIndex];
    return [UIImage imageNamed: array[current]];
}

+ (id)elementsForArray:(NSArray *)array {
    NSInteger index = [PPThemeManager currentThemeIndex];
    if (array && array.count > index) {
        return array[index];
    }
    return nil;
}

@end
