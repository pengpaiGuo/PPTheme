//
//  PPThemeManager+Index.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "PPThemeManager.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PPThemeManager (Index)

+ (UIColor *)colorElementForArray:(NSArray *)array;
+ (UIImage *)imageElementForArray:(NSArray *)array;
+ (id)elementsForArray:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END
