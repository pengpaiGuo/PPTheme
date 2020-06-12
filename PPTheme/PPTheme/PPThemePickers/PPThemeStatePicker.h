//
//  PPThemeStatePicker.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePicker.h"

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeStatePicker : PPThemePicker

@property (nonatomic, strong) NSMutableDictionary * values;

- (instancetype)initPicker:(PPThemePicker *)picker withState:(UIControlState)state;
- (instancetype)setPicker:(PPThemePicker *)picker withState:(UIControlState)state;

@end

NS_ASSUME_NONNULL_END
