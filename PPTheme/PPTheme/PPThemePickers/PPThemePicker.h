//
//  PPThemePicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef id _Nonnull (^PPThemeValueType)(void);

NS_ASSUME_NONNULL_BEGIN

@interface PPThemePicker : NSObject <NSCopying>

@property (nonatomic, copy) PPThemeValueType value;

- (instancetype)initWithValue:(PPThemeValueType)value;
- (id)copyWithZone:(nullable NSZone *)zone;

@end

NS_ASSUME_NONNULL_END
