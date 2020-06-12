//
//  PPThemePickersHeader.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PPThemeActivityIViewStylePicker.h"
#import "PPThemeBarStylePicker.h"
#import "PPThemeBlurEffectPicker.h"
#import "PPThemeCGColorPicker.h"
#import "PPThemeCGFloatPicker.h"
#import "PPThemeColorPicker.h"
#import "PPThemeDictionaryPicker.h"
#import "PPThemeFontPicker.h"
#import "PPThemeImagePicker.h"
#import "PPThemeKeyboardAppearPicker.h"
#import "PPThemeNavBarAppearPicker.h"
#import "PPThemeScrollVIndicatorStylePicker.h"
#import "PPThemeStatePicker.h"
#import "PPThemeStatusBarStylePicker.h"
#import "PPThemeStringAttrPicker.h"
#import "PPThemeVisualEffectPicker.h"

typedef void(*setCGColorValueIMP)(NSObject*, SEL, CGColorRef);
typedef void(*setCGFloatValueIMP)(NSObject*, SEL, CGFloat);
typedef void(*setValueForStateIMP)(NSObject*, SEL, id, UIControlState);
typedef void(*setKeyboardValueIMP)(NSObject*, SEL, UIKeyboardAppearance);
typedef void(*setActivityStyleValueIMP)(NSObject*, SEL, UIActivityIndicatorViewStyle);
typedef void(*setScrollStyleValueIMP)(NSObject*, SEL, UIScrollViewIndicatorStyle);
typedef void(*setBarStyleValueIMP)(NSObject*, SEL, UIBarStyle);
typedef void(*setStatusBarStyleValueIMP)(NSObject*, SEL, UIStatusBarStyle, BOOL);

