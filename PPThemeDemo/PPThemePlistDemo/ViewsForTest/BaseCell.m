//
//  BaseCell.m
//  PPThemeDemo
//
//  Created by Pai on 2020/6/11.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "BaseCell.h"

@implementation BaseCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.theme_backgroundColor = [PPThemeColorPicker pickerWithKeyPath:@"Global.backgroundColor"];

}

@end
