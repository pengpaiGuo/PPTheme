//
//  UIResponder+PPTheme.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPThemePickersHeader.h"
#import "NSObject+PPTheme.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (PPTheme)
@property (nonatomic, strong) PPThemeCGFloatPicker * theme_alpha;
@property (nonatomic, strong) PPThemeColorPicker * theme_backgroundColor;
@property (nonatomic, strong) PPThemeColorPicker * theme_tintColor;
@end

@interface CALayer (PPTheme)
@property (nonatomic, strong) PPThemeCGColorPicker * theme_backgroundColor;
@property (nonatomic, strong) PPThemeCGFloatPicker * theme_borderWidth;
@property (nonatomic, strong) PPThemeCGColorPicker * theme_borderColor;
@property (nonatomic, strong) PPThemeCGColorPicker * theme_shadowColor;
@property (nonatomic, strong) PPThemeCGColorPicker * theme_strokeColor;
@property (nonatomic, strong) PPThemeCGColorPicker * theme_fillColor;

@end

@interface UIActivityIndicatorView (PPTheme)
@property (nonatomic, strong) PPThemeColorPicker * theme_color;
@property (nonatomic, strong) PPThemeActivityIViewStylePicker * theme_activityIndicatorViewStyle;
@end

@interface UIApplication (PPTheme)
- (void)theme_setStatusBarStyle:(PPThemeStatusBarStylePicker *)picker animated:(BOOL)animated;
@end

API_AVAILABLE(ios(13.0))
@interface UIBarAppearance (PPTheme)
@property (nonatomic, strong) PPThemeColorPicker * theme_backgroundColor;
@property (nonatomic, strong) PPThemeImagePicker * theme_backgroundImage;
@property (nonatomic, strong) PPThemeBlurEffectPicker * theme_backgroundEffect;
@property (nonatomic, strong) PPThemeColorPicker * theme_shadowColor;
@property (nonatomic, strong) PPThemeImagePicker * theme_shadowImage;
@end

@interface UIBarButtonItem (PPTheme)
@property (nonatomic, strong) PPThemeColorPicker * theme_tintColor;
@end

@interface UIBarItem (PPTheme)
@property (nonatomic, strong) PPThemeImagePicker * theme_image;
- (void)theme_setTitleTextAttributes:(PPThemeStringAttrPicker *)picker forState:(UIControlState)state;
@end

@interface UIButton (PPTheme)
- (void)theme_setImage:(PPThemeImagePicker *)picker forState:(UIControlState)state;
- (void)theme_setBackgroundImage:(PPThemeImagePicker *)picker forState:(UIControlState)state;
- (void)theme_setTitleColor:(PPThemeColorPicker *)picker forState:(UIControlState)state;
@end

@interface UIImageView (PPTheme)
@property (nonatomic, strong) PPThemeImagePicker * theme_image;
@end

@interface UILabel (PPTheme)
@property (nonatomic, strong) PPThemeFontPicker * theme_font;
@property (nonatomic, strong) PPThemeColorPicker * theme_textColor;
@property (nonatomic, strong) PPThemeColorPicker * theme_highlightedTextColor;
@property (nonatomic, strong) PPThemeColorPicker * theme_shadowColor;
@property (nonatomic, strong) PPThemeStringAttrPicker * theme_textAttributes;
@end

@interface UINavigationBar (PPTheme)
@property (nonatomic, strong) PPThemeBarStylePicker * theme_barStyle;
@property (nonatomic, strong) PPThemeColorPicker * theme_barTintColor;
@property (nonatomic, strong) PPThemeStringAttrPicker * theme_titleTextAttributes;
@property (nonatomic, strong) PPThemeStringAttrPicker * theme_largeTitleTextAttributes;

@property (nonatomic, strong) PPThemeNavBarAppearPicker * theme_standardAppearance API_AVAILABLE(ios(13.0));
@property (nonatomic, strong) PPThemeNavBarAppearPicker * theme_compactAppearance API_AVAILABLE(ios(13.0));
@property (nonatomic, strong) PPThemeNavBarAppearPicker * theme_scrollEdgeAppearance API_AVAILABLE(ios(13.0));
@end

API_AVAILABLE(ios(13.0))
@interface UINavigationBarAppearance (PPTheme)
@property (nonatomic, strong) PPThemeStringAttrPicker * theme_titleTextAttributes;
@property (nonatomic, strong) PPThemeStringAttrPicker * theme_largeTitleTextAttributes;
@property (nonatomic, strong) PPThemeImagePicker * theme_backIndicatorImage;
@end

@interface UIPageControl (PPTheme)
@property (nonatomic, strong) PPThemeColorPicker * theme_pageIndicatorTintColor;
@property (nonatomic, strong) PPThemeColorPicker * theme_currentPageIndicatorTintColor;
@end


@interface UIPopoverPresentationController (PPTheme)
@property (nonatomic, strong) PPThemeColorPicker * theme_backgroundColor;
@end

@interface UIProgressView (PPTheme)
@property (nonatomic, strong) PPThemeColorPicker * theme_progressTintColor;
@property (nonatomic, strong) PPThemeColorPicker * theme_trackTintColor;
@end


@interface UIRefreshControl (PPTheme)
@property (nonatomic, strong) PPThemeStringAttrPicker * theme_titleAttributes;
@end

@interface UIScrollView (PPTheme)
@property (nonatomic, strong) PPThemeScrollVIndicatorStylePicker * theme_indicatorStyle;
@end

@interface UISearchBar (PPTheme)
@property (nonatomic, strong) PPThemeBarStylePicker * theme_barStyle;
@property (nonatomic, strong) PPThemeKeyboardAppearPicker * theme_keyboardAppearance;
@property (nonatomic, strong) PPThemeColorPicker * theme_barTintColor;
@end

@interface UISegmentedControl (PPTheme)
@property (nonatomic, strong) PPThemeColorPicker * theme_selectedSegmentTintColor;
- (void)theme_setTitleTextAttributes:(PPThemeStringAttrPicker *)picker forState:(UIControlState)state;
@end

@interface UISlider (PPTheme)
@property (nonatomic, strong) PPThemeColorPicker * theme_thumbTintColor;
@property (nonatomic, strong) PPThemeColorPicker * theme_minimumTrackTintColor;
@property (nonatomic, strong) PPThemeColorPicker * theme_maximumTrackTintColor;
@end

@interface UISwitch (PPTheme)
@property (nonatomic, strong) PPThemeColorPicker * theme_onTintColor;
@property (nonatomic, strong) PPThemeColorPicker * theme_thumbTintColor;
@end

@interface UITabBar (PPTheme)
@property (nonatomic, strong) PPThemeBarStylePicker * theme_barStyle;
@property (nonatomic, strong) PPThemeColorPicker * theme_unselectedItemTintColor;
@property (nonatomic, strong) PPThemeColorPicker * theme_barTintColor;
@end

@interface UITabBarItem (PPTheme)
@property (nonatomic, strong) PPThemeImagePicker * theme_selectedImage;
@end

@interface UITableView (PPTheme)
@property (nonatomic, strong) PPThemeColorPicker * theme_separatorColor;
@property (nonatomic, strong) PPThemeColorPicker * theme_sectionIndexColor;
@property (nonatomic, strong) PPThemeColorPicker * theme_sectionIndexBackgroundColor;
@end

@interface UITextField (PPTheme)
@property (nonatomic, strong) PPThemeFontPicker * theme_font;
@property (nonatomic, strong) PPThemeKeyboardAppearPicker * theme_keyboardAppearance;
@property (nonatomic, strong) PPThemeColorPicker * theme_textColor;
@property (nonatomic, strong) PPThemeStringAttrPicker * theme_placeholderAttributes;
@end

@interface UITextView (PPTheme)
@property (nonatomic, strong) PPThemeFontPicker * theme_font;
@property (nonatomic, strong) PPThemeKeyboardAppearPicker * theme_keyboardAppearance;
@property (nonatomic, strong) PPThemeColorPicker * theme_textColor;
@end

@interface UIToolbar (PPTheme)
@property (nonatomic, strong) PPThemeBarStylePicker * theme_barStyle;
@property (nonatomic, strong) PPThemeColorPicker * theme_barTintColor;
@end

@interface UIVisualEffectView (PPTheme)
@property (nonatomic, strong) PPThemeVisualEffectPicker * theme_effect;
@end

NS_ASSUME_NONNULL_END
