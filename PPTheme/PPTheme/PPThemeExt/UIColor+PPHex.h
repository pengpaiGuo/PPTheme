//
//  UIColor+PPHex.h
//  PPTheme
//
//  Created by Pai on 2020/6/8.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (PPHex)

+ (UIColor *)colorWithHex:(UInt32)hex;
+ (UIColor *)colorWithHex:(UInt32)hex andAlpha:(CGFloat)alpha;
+ (UIColor *)colorWithHexString:(id)hexString;

- (UInt32)hexValue;

@end

NS_ASSUME_NONNULL_END
