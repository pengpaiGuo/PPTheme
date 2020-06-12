//
//  UILabel+PPAttrText.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (PPAttrText)

- (void)updateTextAttributes:(NSDictionary<NSAttributedStringKey,id> *)newAttributes;
 
@end

NS_ASSUME_NONNULL_END
