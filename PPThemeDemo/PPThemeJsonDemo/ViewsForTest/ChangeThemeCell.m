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

    [self.changeTheme theme_setTitleColor:[PPThemeColorPicker pickerWithKeyPath:@"ChangeThemeCell.buttonTitleColorNormal"] forState:UIControlStateNormal];
    [self.changeTheme theme_setTitleColor:[PPThemeColorPicker pickerWithKeyPath:@"ChangeThemeCell.buttonTitleColorNormal"] forState:UIControlStateHighlighted];
    self.changeTheme.theme_backgroundColor = [PPThemeColorPicker pickerWithKeyPath:@"ChangeThemeCell.buttonBackgroundColor"];
    self.changeTheme.layer.cornerRadius = self.changeTheme.bounds.size.width / 2;

}

- (IBAction)tapChange:(UIButton *)sender {
    [MyThemeTool switchToNext];
}

@end
