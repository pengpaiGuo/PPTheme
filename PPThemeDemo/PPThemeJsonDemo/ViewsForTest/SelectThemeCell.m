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
    
    self.title.theme_textColor = [PPThemeColorPicker pickerWithKeyPath:@"Global.textColor"];
    self.themeIcon.theme_image = [PPThemeImagePicker pickerWithKeyPath:@"SelectThemeCell.iconImage"];

}

@end
