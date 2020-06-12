//
//  AboutCell.m
//  PPThemeDemo
//
//  Created by Pai on 2020/6/11.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "AboutCell.h"

@implementation AboutCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.content.theme_font = [PPThemeFontPicker pickerWithKeyPath:@"Global.textBigFont"];
    self.content.theme_textColor = [PPThemeColorPicker pickerWithKeyPath:@"Global.textColor"];
    
}
@end
