//
//  SwitchNightCell.m
//  PPThemeDemo
//
//  Created by Pai on 2020/6/11.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "SwitchNightCell.h"

@implementation SwitchNightCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.title.theme_textColor = globalTextColorPicker;
    self.title.theme_font = [PPThemeFontPicker pickerWithFonts:@[[UIFont systemFontOfSize:20],[UIFont systemFontOfSize:30],[UIFont systemFontOfSize:15],[UIFont systemFontOfSize:35]]];
    self.nightIcon.theme_image = [PPThemeImagePicker pickerWithNames:@[@"icon_night_dark", @"icon_night_dark", @"icon_night_dark", @"icon_night_light"]];
    
    [self updateNightSwitch];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateNightSwitch) name:PPThemeUpdateNotification object:nil];
}

- (IBAction)changeNight:(UISwitch *)sender {
    [MyThemeTool switchNight:sender.on];
}

- (void)updateNightSwitch {
    self.nightSwitch.on = [MyThemeTool isNight];
}

@end
