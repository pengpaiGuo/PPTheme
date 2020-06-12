//
//  NSAttributedString+PPMerge.h
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSAttributedString (PPMerge)

- (instancetype)initWithAttributedString:(NSAttributedString *)attrStr newAttributes:(NSDictionary<NSAttributedStringKey,id> *)newAttributes;

@end

NS_ASSUME_NONNULL_END
