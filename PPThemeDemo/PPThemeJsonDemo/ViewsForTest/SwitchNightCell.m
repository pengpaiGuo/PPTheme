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
    
    self.title.theme_textColor = [PPThemeColorPicker pickerWithKeyPath:@"Global.textColor"];
    self.nightIcon.theme_image = [PPThemeImagePicker pickerWithKeyPath:@"SwitchNightCell.iconImage"];
    
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
