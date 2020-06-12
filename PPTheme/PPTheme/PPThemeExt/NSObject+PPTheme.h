//
//  NSObject+PPTheme.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class PPThemePicker;

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (PPTheme)

@property (nonatomic, strong) NSDictionary<NSString *,PPThemePicker *> * themePickers;

- (PPThemePicker *)getThemePickerWithSelector:(NSString *)selector;
- (void)setThemePickerWithSelector:(NSString *)selector picker:(PPThemePicker *)picker;
- (PPThemePicker *)makeStatePickerWithSelector:(NSString *)selector picker:(PPThemePicker *)picker state:(UIControlState)state;

@end

NS_ASSUME_NONNULL_END
