//
//  NSObject+PPTheme.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "NSObject+PPTheme.h"
#import <objc/runtime.h>
#import "PPThemeManager.h"
#import <UIKit/UIKit.h>
#import "PPThemePickersHeader.h"

#ifndef dispatch_queue_async_safe
#define dispatch_queue_async_safe(queue, block)\
    if (dispatch_queue_get_label(DISPATCH_CURRENT_QUEUE_LABEL) == dispatch_queue_get_label(queue)) {\
        block();\
    } else {\
        dispatch_async(queue, block);\
    }
#endif

#ifndef dispatch_main_async_safe
#define dispatch_main_async_safe(block) dispatch_queue_async_safe(dispatch_get_main_queue(), block)
#endif

const void *themePickersKey = "themePickersKey";

@implementation NSObject (PPTheme)

- (NSDictionary<NSString *,PPThemePicker *> *)themePickers {
    id thePicker = objc_getAssociatedObject(self, themePickersKey);
    if (thePicker) {
        return thePicker;
    }
    NSDictionary * thePickers = [NSDictionary dictionary];
    objc_setAssociatedObject(self, themePickersKey, thePickers, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return thePickers;
}
- (void)setThemePickers:(NSDictionary<NSString *,PPThemePicker *> *)themePickers {
    objc_setAssociatedObject(self, themePickersKey, themePickers, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self removeThemeNotification];
    if (themePickers) {
        [self setupThemeNotification];
    }
}

- (void)performThemeSelector:(NSString *)selector andPicker:(PPThemePicker*)picker {
    SEL sel = NSSelectorFromString(selector);
    
    if (!picker || !picker.value || !self) {
        return;
    }
    id value = picker.value();
    
    if ([picker isKindOfClass:[PPThemeStatePicker class]] && [self respondsToSelector:sel]) {
        IMP imp = [self methodForSelector:sel];
        setValueForStateIMP impBlock = (void *)imp;
        impBlock(self,sel,value,UIControlStateNormal);
    }else if ([picker isKindOfClass:[PPThemeStatusBarStylePicker class]] && [self respondsToSelector:sel]) {
        IMP imp = [self methodForSelector:sel];
        setStatusBarStyleValueIMP impBlock = (void *)imp;
        PPThemeStatusBarStylePicker * newPicker = (PPThemeStatusBarStylePicker *)picker;
        impBlock(self,sel,[value integerValue],newPicker.animated);
    }
    else if ([picker isKindOfClass:[PPThemeBarStylePicker class]] && [self respondsToSelector:sel]) {
        IMP imp = [self methodForSelector:sel];
        setBarStyleValueIMP impBlock = (void *)imp;
        impBlock(self,sel,[value integerValue]);
    }
    else if ([picker isKindOfClass:[PPThemeKeyboardAppearPicker class]] && [self respondsToSelector:sel]) {
        IMP imp = [self methodForSelector:sel];
        setKeyboardValueIMP impBlock = (void *)imp;
        impBlock(self,sel,[value intValue]);
    }else if ([picker isKindOfClass:[PPThemeActivityIViewStylePicker class]] && [self respondsToSelector:sel]) {
        IMP imp = [self methodForSelector:sel];
        setActivityStyleValueIMP impBlock = (void *)imp;
        impBlock(self,sel,[value intValue]);
    }else if ([picker isKindOfClass:[PPThemeScrollVIndicatorStylePicker class]] && [self respondsToSelector:sel]) {
        IMP imp = [self methodForSelector:sel];
        setScrollStyleValueIMP impBlock = (void *)imp;
        impBlock(self,sel,[value intValue]);
    }else if ([picker isKindOfClass:[PPThemeCGFloatPicker class]] && [self respondsToSelector:sel]) {
        IMP imp = [self methodForSelector:sel];
        setCGFloatValueIMP impBlock = (void *)imp;
        impBlock(self,sel,[value doubleValue]);
    }else if ([picker isKindOfClass:[PPThemeCGColorPicker class]] && [self respondsToSelector:sel]) {
        IMP imp = [self methodForSelector:sel];
        if ([value isKindOfClass:[UIColor class]]) {
            UIColor * color = (UIColor *)value;
            setCGColorValueIMP stateBlock = (void *)imp;
            stateBlock(self,sel,color.CGColor);
        }
        
    }else if ([self respondsToSelector:sel]){
        IMP imp = [self methodForSelector:sel];
        void (*func)(id, SEL, id) = (void *)imp;
        func(self, sel, value);
    }
    
}

- (void)setupThemeNotification {
    if (@available(iOS 9.0, *)) {
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(updateTheme) name:PPThemeUpdateNotification object:nil];
    } else {
        [[NSNotificationCenter defaultCenter]addObserverForName: PPThemeUpdateNotification object:nil queue:nil usingBlock:^(NSNotification * _Nonnull note) {
            [self updateTheme];
        }];
    }
}

- (void)removeThemeNotification {
    [[NSNotificationCenter defaultCenter]removeObserver:self name:PPThemeUpdateNotification object:nil];
}

- (void)updateTheme {
    dispatch_main_async_safe(^{
        for (NSString * selector in self.themePickers.allKeys) {
            [UIView animateWithDuration:[PPThemeManager animationDuration] animations:^{
                [self performThemeSelector:selector andPicker:self.themePickers[selector]];
                if (@available(iOS 13.0, *)) {
                    if ([self isKindOfClass:[UINavigationBar class]]) {
                        UINavigationBar * navBar = (UINavigationBar *)self;
                        [navBar setNeedsLayout];
                    }
                }
            }];
        }
    })
}

- (PPThemePicker *)getThemePickerWithSelector:(NSString *)selector {
    return self.themePickers[selector];
}

- (void)setThemePickerWithSelector:(NSString *)selector picker:(PPThemePicker *)picker {
    NSMutableDictionary * mutDic = [NSMutableDictionary dictionaryWithDictionary:self.themePickers];
    mutDic[selector] = picker;
    self.themePickers = [NSDictionary dictionaryWithDictionary:mutDic];
    [self performThemeSelector:selector andPicker:picker];
}

- (PPThemePicker *)makeStatePickerWithSelector:(NSString *)selector picker:(PPThemePicker *)picker state:(UIControlState)state {
    PPThemePicker * newPicker = picker;
    if (!self.themePickers || !self.themePickers[selector]) {
        return newPicker;
    }
    id pic = self.themePickers[selector];
    if ([pic isKindOfClass:[PPThemeStatePicker class]]) {
        newPicker = [(PPThemeStatePicker *)pic setPicker:picker withState:state];
    }else {
        newPicker = [[PPThemeStatePicker alloc]initPicker:picker withState:state];
    }
    return newPicker;
}

@end
