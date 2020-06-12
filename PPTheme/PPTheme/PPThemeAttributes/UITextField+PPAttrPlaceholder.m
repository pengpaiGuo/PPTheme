//
//  UITextField+PPAttrPlaceholder.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "UITextField+PPAttrPlaceholder.h"
#import "NSAttributedString+PPMerge.h"

@implementation UITextField (PPAttrPlaceholder)

- (void)updateTextAttributes:(NSDictionary<NSAttributedStringKey,id> *)newAttributes {
    if (self.attributedPlaceholder) {
        self.attributedPlaceholder = [[NSAttributedString alloc]initWithString:[self.attributedPlaceholder string] attributes:newAttributes];
    }
}

@end
