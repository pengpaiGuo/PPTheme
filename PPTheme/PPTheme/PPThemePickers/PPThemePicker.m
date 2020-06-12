//
//  PPThemePicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemePicker.h"

@implementation PPThemePicker

- (instancetype)initWithValue:(PPThemeValueType)value {
    if (self = [super init]) {
        self.value = value;
    }
    return self;
}

- (id)copyWithZone:(nullable NSZone *)zone {
    return [[[self class]allocWithZone:zone]initWithValue:self.value];
}

@end
