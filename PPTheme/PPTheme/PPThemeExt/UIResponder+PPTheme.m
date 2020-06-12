//
//  UIResponder+PPTheme.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "UIResponder+PPTheme.h"

@implementation UIView (PPTheme)

- (PPThemeCGFloatPicker *)theme_alpha {
    return (PPThemeCGFloatPicker *)[self getThemePickerWithSelector:@"setAlpha:"];
}
- (void)setTheme_alpha:(PPThemeCGFloatPicker *)theme_alpha {
    [self setThemePickerWithSelector:@"setAlpha:" picker:theme_alpha];
}

- (PPThemeColorPicker *)theme_backgroundColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setBackgroundColor:"];
}
- (void)setTheme_backgroundColor:(PPThemeColorPicker *)theme_backgroundColor {
    [self setThemePickerWithSelector:@"setBackgroundColor:" picker:theme_backgroundColor];
}

- (PPThemeColorPicker *)theme_tintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setTintColor:"];
}
- (void)setTheme_tintColor:(PPThemeColorPicker *)theme_tintColor {
    [self setThemePickerWithSelector:@"setTintColor:" picker:theme_tintColor];
}
@end

@implementation CALayer (PPTheme)

- (PPThemeCGColorPicker *)theme_backgroundColor {
    return (PPThemeCGColorPicker *)[self getThemePickerWithSelector:@"setBackgroundColor:"];
}
- (void)setTheme_backgroundColor:(PPThemeCGColorPicker *)theme_backgroundColor {
    [self setThemePickerWithSelector:@"setBackgroundColor:" picker:theme_backgroundColor];
}
- (PPThemeCGFloatPicker *)theme_borderWidth {
    return (PPThemeCGFloatPicker *)[self getThemePickerWithSelector:@"setBorderWidth:"];
}
- (void)setTheme_borderWidth:(PPThemeCGFloatPicker *)theme_borderWidth {
    [self setThemePickerWithSelector:@"setBorderWidth:" picker:theme_borderWidth];
}
- (PPThemeCGColorPicker *)theme_borderColor {
    return (PPThemeCGColorPicker *)[self getThemePickerWithSelector:@"setBorderColor:"];
}
- (void)setTheme_borderColor:(PPThemeCGColorPicker *)theme_borderColor {
    [self setThemePickerWithSelector:@"setBorderColor:" picker:theme_borderColor];
}
- (PPThemeCGColorPicker *)theme_shadowColor {
    return (PPThemeCGColorPicker *)[self getThemePickerWithSelector:@"setShadowColor:"];
}
- (void)setTheme_shadowColor:(PPThemeCGColorPicker *)theme_shadowColor {
    [self setThemePickerWithSelector:@"setShadowColor:" picker:theme_shadowColor];
}
- (PPThemeCGColorPicker *)theme_strokeColor {
    return (PPThemeCGColorPicker *)[self getThemePickerWithSelector:@"setStrokeColor:"];
}
- (void)setTheme_strokeColor:(PPThemeCGColorPicker *)theme_strokeColor {
    [self setThemePickerWithSelector:@"setStrokeColor:" picker:theme_strokeColor];
}
- (PPThemeCGColorPicker *)theme_fillColor {
    return (PPThemeCGColorPicker *)[self getThemePickerWithSelector:@"setFillColor:"];
}
- (void)setTheme_fillColor:(PPThemeCGColorPicker *)theme_fillColor {
    [self setThemePickerWithSelector:@"setFillColor:" picker:theme_fillColor];
}

@end

@implementation UIActivityIndicatorView (PPTheme)

- (PPThemeColorPicker *)theme_color {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setColor:"];
}
- (void)setTheme_color:(PPThemeColorPicker *)theme_color {
    [self setThemePickerWithSelector:@"setColor:" picker:theme_color];
}
- (PPThemeActivityIViewStylePicker *)theme_activityIndicatorViewStyle {
    return (PPThemeActivityIViewStylePicker *)[self getThemePickerWithSelector:@"setActivityIndicatorViewStyle:"];
}
- (void)setTheme_activityIndicatorViewStyle:(PPThemeActivityIViewStylePicker *)theme_activityIndicatorViewStyle {
     [self setThemePickerWithSelector:@"setActivityIndicatorViewStyle:" picker:theme_activityIndicatorViewStyle];
}
@end

@implementation UIApplication (PPTheme)

- (void)theme_setStatusBarStyle:(PPThemeStatusBarStylePicker *)picker animated:(BOOL)animated {
    picker.animated = animated;
    [self setThemePickerWithSelector:@"setStatusBarStyle:animated:" picker:picker];
}

@end

@implementation UIBarAppearance (PPTheme)

- (PPThemeColorPicker *)theme_backgroundColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setBackgroundColor:"];
}
- (void)setTheme_backgroundColor:(PPThemeColorPicker *)theme_backgroundColor {
    [self setThemePickerWithSelector:@"setBackgroundColor:" picker:theme_backgroundColor];
}
- (PPThemeImagePicker *)theme_backgroundImage {
    return (PPThemeImagePicker *)[self getThemePickerWithSelector:@"setBackgroundImage:"];
}
- (void)setTheme_backgroundImage:(PPThemeImagePicker *)theme_backgroundImage {
    [self setThemePickerWithSelector:@"setBackgroundImage:" picker:theme_backgroundImage];
}
- (PPThemeBlurEffectPicker *)theme_backgroundEffect {
    return (PPThemeBlurEffectPicker *)[self getThemePickerWithSelector:@"setBackgroundEffect:"];
}
- (void)setTheme_backgroundEffect:(PPThemeBlurEffectPicker *)theme_backgroundEffect {
    [self setThemePickerWithSelector:@"setBackgroundEffect:" picker:theme_backgroundEffect];
}
- (PPThemeColorPicker *)theme_shadowColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setShadowColor:"];
}
- (void)setTheme_shadowColor:(PPThemeColorPicker *)theme_shadowColor {
    [self setThemePickerWithSelector:@"setShadowColor:" picker:theme_shadowColor];
}
- (PPThemeImagePicker *)theme_shadowImage {
    return (PPThemeImagePicker *)[self getThemePickerWithSelector:@"setShadowImage:"];
}
- (void)setTheme_shadowImage:(PPThemeImagePicker *)theme_shadowImage {
    [self setThemePickerWithSelector:@"setShadowImage:" picker:theme_shadowImage];
}
@end

@implementation UIBarButtonItem (PPTheme)

- (PPThemeColorPicker *)theme_tintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setTintColor:"];
}
- (void)setTheme_tintColor:(PPThemeColorPicker *)theme_tintColor {
    [self setThemePickerWithSelector:@"setTintColor:" picker:theme_tintColor];
}
@end

@implementation UIBarItem (PPTheme)

- (PPThemeImagePicker *)theme_image {
     return (PPThemeImagePicker *)[self getThemePickerWithSelector:@"setImage:"];
}
- (void)setTheme_image:(PPThemeImagePicker *)theme_image {
    [self setThemePickerWithSelector:@"setImage:" picker:theme_image];
}
- (void)theme_setTitleTextAttributes:(PPThemeStringAttrPicker *)picker forState:(UIControlState)state {
    PPThemePicker * newPicker = [self makeStatePickerWithSelector:@"setTitleTextAttributes:forState:" picker:picker state:state];
    [self setThemePickerWithSelector:@"setTitleTextAttributes:forState:" picker:newPicker];
}
@end

@implementation UIButton (PPTheme)

- (void)theme_setImage:(PPThemeImagePicker *)picker forState:(UIControlState)state {
    PPThemePicker * newPicker = [self makeStatePickerWithSelector:@"setImage:forState:" picker:picker state:state];
    [self setThemePickerWithSelector:@"setImage:forState:" picker:newPicker];
}
- (void)theme_setBackgroundImage:(PPThemeImagePicker *)picker forState:(UIControlState)state {
    PPThemePicker * newPicker = [self makeStatePickerWithSelector:@"setBackgroundImage:forState:" picker:picker state:state];
    [self setThemePickerWithSelector:@"setBackgroundImage:forState:" picker:newPicker];
}
- (void)theme_setTitleColor:(PPThemeColorPicker *)picker forState:(UIControlState)state {
    PPThemePicker * newPicker = [self makeStatePickerWithSelector:@"setTitleColor:forState:" picker:picker state:state];
    [self setThemePickerWithSelector:@"setTitleColor:forState:" picker:newPicker];
}
@end

@implementation UIImageView (PPTheme)

- (PPThemeImagePicker *)theme_image {
    return (PPThemeImagePicker *)[self getThemePickerWithSelector:@"setImage:"];
}
- (void)setTheme_image:(PPThemeImagePicker *)theme_image {
    [self setThemePickerWithSelector:@"setImage:" picker:theme_image];
}
@end

@implementation UILabel (PPTheme)

- (PPThemeFontPicker *)theme_font {
    return (PPThemeFontPicker *)[self getThemePickerWithSelector:@"setFont:"];
}
- (void)setTheme_font:(PPThemeFontPicker *)theme_font {
    [self setThemePickerWithSelector:@"setFont:" picker:theme_font];
}

- (PPThemeColorPicker *)theme_textColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setTextColor:"];
}
- (void)setTheme_textColor:(PPThemeColorPicker *)theme_textColor {
    [self setThemePickerWithSelector:@"setTextColor:" picker:theme_textColor];
}

- (PPThemeColorPicker *)theme_highlightedTextColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setHighlightedTextColor:"];
}
- (void)setTheme_highlightedTextColor:(PPThemeColorPicker *)theme_highlightedTextColor {
    [self setThemePickerWithSelector:@"setHighlightedTextColor:" picker:theme_highlightedTextColor];
}

- (PPThemeColorPicker *)theme_shadowColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setShadowColor:"];
}
- (void)setTheme_shadowColor:(PPThemeColorPicker *)theme_shadowColor {
    [self setThemePickerWithSelector:@"setShadowColor:" picker:theme_shadowColor];
}

- (PPThemeStringAttrPicker *)theme_textAttributes {
    return (PPThemeStringAttrPicker *)[self getThemePickerWithSelector:@"updateTextAttributes:"];
}
- (void)setTheme_textAttributes:(PPThemeStringAttrPicker *)theme_textAttributes {
    [self setThemePickerWithSelector:@"updateTextAttributes:" picker:theme_textAttributes];
}
@end

@implementation UINavigationBar (PPTheme)

- (PPThemeBarStylePicker *)theme_barStyle {
    return (PPThemeBarStylePicker *)[self getThemePickerWithSelector:@"setBarStyle:"];
}
- (void)setTheme_barStyle:(PPThemeBarStylePicker *)theme_barStyle {
    [self setThemePickerWithSelector:@"setBarStyle:" picker:theme_barStyle];
}
- (PPThemeColorPicker *)theme_barTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setBarTintColor:"];
}
- (void)setTheme_barTintColor:(PPThemeColorPicker *)theme_barTintColor {
    [self setThemePickerWithSelector:@"setBarTintColor:" picker:theme_barTintColor];
}
- (PPThemeStringAttrPicker *)theme_titleTextAttributes {
    return (PPThemeStringAttrPicker *)[self getThemePickerWithSelector:@"setTitleTextAttributes:"];
}
- (void)setTheme_titleTextAttributes:(PPThemeStringAttrPicker *)theme_titleTextAttributes {
    [self setThemePickerWithSelector:@"setTitleTextAttributes:" picker:theme_titleTextAttributes];
}
- (PPThemeStringAttrPicker *)theme_largeTitleTextAttributes {
    return (PPThemeStringAttrPicker *)[self getThemePickerWithSelector:@"setLargeTitleTextAttributes:"];
}
- (void)setTheme_largeTitleTextAttributes:(PPThemeStringAttrPicker *)theme_largeTitleTextAttributes {
    [self setThemePickerWithSelector:@"setLargeTitleTextAttributes:" picker:theme_largeTitleTextAttributes];
}
- (PPThemeNavBarAppearPicker *)theme_standardAppearance  API_AVAILABLE(ios(13.0)){
    return (PPThemeNavBarAppearPicker *)[self getThemePickerWithSelector:@"setStandardAppearance:"];
}
- (void)setTheme_standardAppearance:(PPThemeNavBarAppearPicker *)theme_standardAppearance API_AVAILABLE(ios(13.0)){
    [self setThemePickerWithSelector:@"setStandardAppearance:" picker:theme_standardAppearance];
}
- (PPThemeNavBarAppearPicker *)theme_compactAppearance  API_AVAILABLE(ios(13.0)){
    return (PPThemeNavBarAppearPicker *)[self getThemePickerWithSelector:@"setCompactAppearance:"];
}
- (void)setTheme_compactAppearance:(PPThemeNavBarAppearPicker *)theme_compactAppearance  API_AVAILABLE(ios(13.0)){
    [self setThemePickerWithSelector:@"setCompactAppearance:" picker:theme_compactAppearance];
}
- (PPThemeNavBarAppearPicker *)theme_scrollEdgeAppearance  API_AVAILABLE(ios(13.0)){
    return (PPThemeNavBarAppearPicker *)[self getThemePickerWithSelector:@"setScrollEdgeAppearance:"];
}
- (void)setTheme_scrollEdgeAppearance:(PPThemeNavBarAppearPicker *)theme_scrollEdgeAppearance  API_AVAILABLE(ios(13.0)){
    [self setThemePickerWithSelector:@"setScrollEdgeAppearance:" picker:theme_scrollEdgeAppearance];
}
@end

@implementation UINavigationBarAppearance (PPTheme)
- (PPThemeStringAttrPicker *)theme_titleTextAttributes {
    return (PPThemeStringAttrPicker *)[self getThemePickerWithSelector:@"setTitleTextAttributes:"];
}
- (void)setTheme_titleTextAttributes:(PPThemeStringAttrPicker *)theme_titleTextAttributes {
    [self setThemePickerWithSelector:@"setTitleTextAttributes:" picker:theme_titleTextAttributes];
}
- (PPThemeStringAttrPicker *)theme_largeTitleTextAttributes {
    return (PPThemeStringAttrPicker *)[self getThemePickerWithSelector:@"setLargeTitleTextAttributes:"];
}
- (void)setTheme_largeTitleTextAttributes:(PPThemeStringAttrPicker *)theme_largeTitleTextAttributes {
    [self setThemePickerWithSelector:@"setLargeTitleTextAttributes:" picker:theme_largeTitleTextAttributes];
}
- (PPThemeImagePicker *)theme_backIndicatorImage {
    return (PPThemeImagePicker *)[self getThemePickerWithSelector:@"setBackIndicatorImage:"];
}
- (void)setTheme_backIndicatorImage:(PPThemeImagePicker *)theme_backIndicatorImage {
    [self setThemePickerWithSelector:@"setBackIndicatorImage:" picker:theme_backIndicatorImage];
}

@end

@implementation UIPageControl (PPTheme)

- (PPThemeColorPicker *)theme_pageIndicatorTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setPageIndicatorTintColor:"];
}
- (void)setTheme_pageIndicatorTintColor:(PPThemeColorPicker *)theme_pageIndicatorTintColor {
    [self setThemePickerWithSelector:@"setPageIndicatorTintColor:" picker:theme_pageIndicatorTintColor];
}
- (PPThemeColorPicker *)theme_currentPageIndicatorTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setCurrentPageIndicatorTintColor:"];
}
- (void)setTheme_currentPageIndicatorTintColor:(PPThemeColorPicker *)theme_currentPageIndicatorTintColor {
    [self setThemePickerWithSelector:@"setCurrentPageIndicatorTintColor:" picker:theme_currentPageIndicatorTintColor];
}
@end

@implementation UIPopoverPresentationController (PPTheme)

- (PPThemeColorPicker *)theme_backgroundColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setBackgroundColor:"];
}
- (void)setTheme_backgroundColor:(PPThemeColorPicker *)theme_backgroundColor {
    [self setThemePickerWithSelector:@"setBackgroundColor:" picker:theme_backgroundColor];
}
@end

@implementation UIProgressView (PPTheme)

- (PPThemeColorPicker *)theme_progressTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setProgressTintColor:"];
}
- (void)setTheme_progressTintColor:(PPThemeColorPicker *)theme_progressTintColor {
    [self setThemePickerWithSelector:@"setProgressTintColor:" picker:theme_progressTintColor];
}
- (PPThemeColorPicker *)theme_trackTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setTrackTintColor:"];
}
- (void)setTheme_trackTintColor:(PPThemeColorPicker *)theme_trackTintColor {
    [self setThemePickerWithSelector:@"setTrackTintColor:" picker:theme_trackTintColor];
}
@end

@implementation UIRefreshControl (PPTheme)

- (PPThemeStringAttrPicker *)theme_titleAttributes {
    return (PPThemeStringAttrPicker *)[self getThemePickerWithSelector:@"updateTitleAttributes:"];
}
- (void)setTheme_titleAttributes:(PPThemeStringAttrPicker *)theme_titleAttributes {
    [self setThemePickerWithSelector:@"updateTitleAttributes:" picker:theme_titleAttributes];
}
@end

@implementation UIScrollView (PPTheme)

- (PPThemeScrollVIndicatorStylePicker *)theme_indicatorStyle {
    return (PPThemeScrollVIndicatorStylePicker *)[self getThemePickerWithSelector:@"setIndicatorStyle:"];
}
- (void)setTheme_indicatorStyle:(PPThemeScrollVIndicatorStylePicker *)theme_indicatorStyle {
    [self setThemePickerWithSelector:@"setIndicatorStyle:" picker:theme_indicatorStyle];
}
@end

@implementation UISearchBar (PPTheme)

- (PPThemeBarStylePicker *)theme_barStyle {
    return (PPThemeBarStylePicker *)[self getThemePickerWithSelector:@"setBarStyle:"];
}
- (void)setTheme_barStyle:(PPThemeBarStylePicker *)theme_barStyle {
    [self setThemePickerWithSelector:@"setBarStyle:" picker:theme_barStyle];
}
- (PPThemeKeyboardAppearPicker *)theme_keyboardAppearance {
    return (PPThemeKeyboardAppearPicker *)[self getThemePickerWithSelector:@"setKeyboardAppearance:"];
}
- (void)setTheme_keyboardAppearance:(PPThemeKeyboardAppearPicker *)theme_keyboardAppearance {
    [self setThemePickerWithSelector:@"setKeyboardAppearance:" picker:theme_keyboardAppearance];
}
- (PPThemeColorPicker *)theme_barTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setBarTintColor:"];
}
- (void)setTheme_barTintColor:(PPThemeColorPicker *)theme_barTintColor {
    [self setThemePickerWithSelector:@"setBarTintColor:" picker:theme_barTintColor];
}

@end

@implementation UISegmentedControl (PPTheme)

- (PPThemeColorPicker *)theme_selectedSegmentTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setSelectedSegmentTintColor:"];
}
- (void)setTheme_selectedSegmentTintColor:(PPThemeColorPicker *)theme_selectedSegmentTintColor {
    [self setThemePickerWithSelector:@"setSelectedSegmentTintColor:" picker:theme_selectedSegmentTintColor];
}
- (void)theme_setTitleTextAttributes:(PPThemeStringAttrPicker *)picker forState:(UIControlState)state {
    PPThemePicker * newPicker = [self makeStatePickerWithSelector:@"setTitleTextAttributes:forState:" picker:picker state:state];
    [self setThemePickerWithSelector:@"setTitleTextAttributes:forState:" picker:newPicker];
}
@end

@implementation UISlider (PPTheme)

- (PPThemeColorPicker *)theme_thumbTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setOnTintColor:"];
}
- (void)setTheme_thumbTintColor:(PPThemeColorPicker *)theme_thumbTintColor {
    [self setThemePickerWithSelector:@"setOnTintColor:" picker:theme_thumbTintColor];
}
- (PPThemeColorPicker *)theme_minimumTrackTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setMinimumTrackTintColor:"];
}
- (void)setTheme_minimumTrackTintColor:(PPThemeColorPicker *)theme_minimumTrackTintColor {
    [self setThemePickerWithSelector:@"setMinimumTrackTintColor:" picker:theme_minimumTrackTintColor];
}
- (PPThemeColorPicker *)theme_maximumTrackTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setMaximumTrackTintColor:"];
}
- (void)setTheme_maximumTrackTintColor:(PPThemeColorPicker *)theme_maximumTrackTintColor {
    [self setThemePickerWithSelector:@"setMaximumTrackTintColor:" picker:theme_maximumTrackTintColor];
}
@end

@implementation UISwitch (PPTheme)

- (PPThemeColorPicker *)theme_onTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setOnTintColor:"];
}
- (void)setTheme_onTintColor:(PPThemeColorPicker *)theme_onTintColor {
    [self setThemePickerWithSelector:@"setOnTintColor:" picker:theme_onTintColor];
}
- (PPThemeColorPicker *)theme_thumbTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setThumbTintColor:"];
}
- (void)setTheme_thumbTintColor:(PPThemeColorPicker *)theme_thumbTintColor {
    [self setThemePickerWithSelector:@"setThumbTintColor:" picker:theme_thumbTintColor];
}
@end

@implementation UITabBar (PPTheme)

- (PPThemeBarStylePicker *)theme_barStyle {
    return (PPThemeBarStylePicker *)[self getThemePickerWithSelector:@"setBarStyle:"];
}
- (void)setTheme_barStyle:(PPThemeBarStylePicker *)theme_barStyle {
    [self setThemePickerWithSelector:@"setBarStyle:" picker:theme_barStyle];
}
- (PPThemeColorPicker *)theme_unselectedItemTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setUnselectedItemTintColor:"];
}
- (void)setTheme_unselectedItemTintColor:(PPThemeColorPicker *)theme_unselectedItemTintColor {
    [self setThemePickerWithSelector:@"setUnselectedItemTintColor:" picker:theme_unselectedItemTintColor];
}
- (PPThemeColorPicker *)theme_barTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setBarTintColor:"];
}
- (void)setTheme_barTintColor:(PPThemeColorPicker *)theme_barTintColor {
    [self setThemePickerWithSelector:@"setBarTintColor:" picker:theme_barTintColor];
}
@end

@implementation UITabBarItem (PPTheme)

- (PPThemeImagePicker *)theme_selectedImage {
    return (PPThemeImagePicker *)[self getThemePickerWithSelector:@"setSelectedImage:"];
}
- (void)setTheme_selectedImage:(PPThemeImagePicker *)theme_selectedImage {
    [self setThemePickerWithSelector:@"setSelectedImage:" picker:theme_selectedImage];
}
@end

@implementation UITableView (PPTheme)

- (PPThemeColorPicker *)theme_separatorColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setSeparatorColor:"];
}
- (void)setTheme_separatorColor:(PPThemeColorPicker *)theme_separatorColor {
    [self setThemePickerWithSelector:@"setSeparatorColor:" picker:theme_separatorColor];
}
- (PPThemeColorPicker *)theme_sectionIndexColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setSectionIndexColor:"];
}
- (void)setTheme_sectionIndexColor:(PPThemeColorPicker *)theme_sectionIndexColor {
    [self setThemePickerWithSelector:@"setSectionIndexColor:" picker:theme_sectionIndexColor];
}
- (PPThemeColorPicker *)theme_sectionIndexBackgroundColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setSectionIndexBackgroundColor:"];
}
- (void)setTheme_sectionIndexBackgroundColor:(PPThemeColorPicker *)theme_sectionIndexBackgroundColor {
    [self setThemePickerWithSelector:@"setSectionIndexBackgroundColor:" picker:theme_sectionIndexBackgroundColor];
}
@end

@implementation UITextField (PPTheme)
- (PPThemeFontPicker *)theme_font {
    return (PPThemeFontPicker *)[self getThemePickerWithSelector:@"setFont:"];
}
- (void)setTheme_font:(PPThemeFontPicker *)theme_font {
    [self setThemePickerWithSelector:@"setFont:" picker:theme_font];
}
- (PPThemeKeyboardAppearPicker *)theme_keyboardAppearance {
    return (PPThemeKeyboardAppearPicker *)[self getThemePickerWithSelector:@"setKeyboardAppearance:"];
}
- (void)setTheme_keyboardAppearance:(PPThemeKeyboardAppearPicker *)theme_keyboardAppearance {
    [self setThemePickerWithSelector:@"setKeyboardAppearance:" picker:theme_keyboardAppearance];
}
- (PPThemeColorPicker *)theme_textColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setTextColor:"];
}
- (void)setTheme_textColor:(PPThemeColorPicker *)theme_textColor {
    [self setThemePickerWithSelector:@"setTextColor:" picker:theme_textColor];
}
- (PPThemeStringAttrPicker *)theme_placeholderAttributes {
    return (PPThemeStringAttrPicker *)[self getThemePickerWithSelector:@"updatePlaceholderAttributes:"];
}
- (void)setTheme_placeholderAttributes:(PPThemeStringAttrPicker *)theme_placeholderAttributes {
    [self setThemePickerWithSelector:@"updatePlaceholderAttributes:" picker:theme_placeholderAttributes];
}
@end

@implementation UITextView (PPTheme)

- (PPThemeFontPicker *)theme_font {
    return (PPThemeFontPicker *)[self getThemePickerWithSelector:@"setFont:"];
}
- (void)setTheme_font:(PPThemeFontPicker *)theme_font {
    [self setThemePickerWithSelector:@"setFont:" picker:theme_font];
}
- (PPThemeKeyboardAppearPicker *)theme_keyboardAppearance {
    return (PPThemeKeyboardAppearPicker *)[self getThemePickerWithSelector:@"setKeyboardAppearance:"];
}
- (void)setTheme_keyboardAppearance:(PPThemeKeyboardAppearPicker *)theme_keyboardAppearance {
    [self setThemePickerWithSelector:@"setKeyboardAppearance:" picker:theme_keyboardAppearance];
}
- (PPThemeColorPicker *)theme_textColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setTextColor:"];
}
- (void)setTheme_textColor:(PPThemeColorPicker *)theme_textColor {
    [self setThemePickerWithSelector:@"setTextColor:" picker:theme_textColor];
}
@end

@implementation UIToolbar (PPTheme)

- (PPThemeBarStylePicker *)theme_barStyle {
    return (PPThemeBarStylePicker *)[self getThemePickerWithSelector:@"setBarStyle:"];
}
- (void)setTheme_barStyle:(PPThemeBarStylePicker *)theme_barStyle {
    [self setThemePickerWithSelector:@"setBarStyle:" picker:theme_barStyle];

}
- (PPThemeColorPicker *)theme_barTintColor {
    return (PPThemeColorPicker *)[self getThemePickerWithSelector:@"setBarTintColor:"];

}
- (void)setTheme_barTintColor:(PPThemeColorPicker *)theme_barTintColor {
    [self setThemePickerWithSelector:@"setBarTintColor:" picker:theme_barTintColor];
}
@end

@implementation UIVisualEffectView (PPTheme)

- (PPThemeVisualEffectPicker *)theme_effect {
    return (PPThemeVisualEffectPicker *)[self getThemePickerWithSelector:@"setEffect:"];
}
- (void)setTheme_effect:(PPThemeVisualEffectPicker *)theme_effect {
    [self setThemePickerWithSelector:@"setEffect:" picker:theme_effect];
}
@end

