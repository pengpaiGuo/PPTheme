//
//  UILabel+PPAttrText.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "UILabel+PPAttrText.h"
#import "NSAttributedString+PPMerge.h"

@implementation UILabel (PPAttrText)

- (void)updateTextAttributes:(NSDictionary<NSAttributedStringKey,id> *)newAttributes {
    if (self.attributedText) {
        self.attributedText = [[NSAttributedString alloc]initWithString:[self.attributedText string] attributes:newAttributes];
    }
}

@end
