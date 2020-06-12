//
//  ChangeThemeCell.m
//  PPThemeDemo
//
//  Created by Pai on 2020/6/11.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "ChangeThemeCell.h"

@implementation ChangeThemeCell

- (void)awakeFromNib {
    [super awakeFromNib];

    [self.changeTheme theme_setTitleColor:[PPThemeColorPicker pickerWithColors:@[@"#FFFFFF", @"#000000", @"#FFFFFF", @"#000000"]] forState:UIControlStateNormal];
    [self.changeTheme theme_setTitleColor:[PPThemeColorPicker pickerWithColors:@[@"#555555", @"#AAAAAA", @"#555555", @"#AAAAAA"]] forState:UIControlStateHighlighted];
    self.changeTheme.theme_backgroundColor = [PPThemeColorPicker pickerWithColors:@[@"#EB4F38", @"#F4C600", @"#56ABE4", @"#ECF0F1"]];
    self.changeTheme.layer.cornerRadius = self.changeTheme.bounds.size.width / 2;

}

- (IBAction)tapChange:(UIButton *)sender {
    [MyThemeTool switchToNext];
}

@end
