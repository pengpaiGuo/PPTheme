//
//  UIRefreshControl+PPAttrTitle.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "UIRefreshControl+PPAttrTitle.h"
#import "NSAttributedString+PPMerge.h"

@implementation UIRefreshControl (PPAttrTitle)

- (void)updateTextAttributes:(NSDictionary<NSAttributedStringKey,id> *)newAttributes {
    if (self.attributedTitle) {
        self.attributedTitle = [[NSAttributedString alloc]initWithString:[self.attributedTitle string] attributes:newAttributes];
    }
}

@end
