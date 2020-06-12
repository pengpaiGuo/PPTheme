//
//  SelectThemeCell.m
//  PPThemeDemo
//
//  Created by Pai on 2020/6/11.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "SelectThemeCell.h"

@implementation SelectThemeCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.title.theme_textColor = globalTextColorPicker;
    self.themeIcon.theme_image = [PPThemeImagePicker pickerWithNames:@[@"icon_theme_red", @"icon_theme_yellow", @"icon_theme_blue", @"icon_theme_light"]];
    
    self.themeIcon.layer.theme_shadowColor = [PPThemeCGColorPicker pickerWithUIColors:@[[UIColor redColor],[UIColor yellowColor],[UIColor redColor],[UIColor yellowColor]]];

    self.themeIcon.layer.theme_borderColor = [PPThemeCGColorPicker pickerWithUIColors:@[[UIColor redColor],[UIColor yellowColor],[UIColor redColor],[UIColor yellowColor]]];
    self.themeIcon.layer.theme_borderWidth = [PPThemeCGFloatPicker pickerWithFloats:@[[NSNumber numberWithDouble:2],[NSNumber numberWithDouble:5],[NSNumber numberWithDouble:2],[NSNumber numberWithDouble:5]]];

    self.themeIcon.layer.cornerRadius = 1;
    self.themeIcon.layer.masksToBounds = YES;

}

@end
