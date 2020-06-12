//
//  PPThemeStatePicker.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeStatePicker.h"

@implementation PPThemeStatePicker

- (instancetype)initPicker:(PPThemePicker *)picker withState:(UIControlState)state {
    if (!picker) {
        return nil;
    }
    if (self = [super init]) {
        [self.values setObject:picker forKey:[NSNumber numberWithInteger:state]];
    }
    return self;
}

- (instancetype)setPicker:(PPThemePicker *)picker withState:(UIControlState)state {
    [self.values setObject:picker forKey:[NSNumber numberWithInteger:state]];
    return self;
}

- (NSMutableDictionary *)values {
    if (!_values) {
        _values = [NSMutableDictionary dictionary];
    }
    return _values;
}
@end
