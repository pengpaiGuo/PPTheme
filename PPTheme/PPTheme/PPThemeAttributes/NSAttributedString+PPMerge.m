//
//  NSAttributedString+PPMerge.m
//  PPTheme
//
//  Created by Pai on 2020/6/5.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "NSAttributedString+PPMerge.h"

@implementation NSAttributedString (PPMerge)

- (instancetype)initWithAttributedString:(NSAttributedString *)attrStr newAttributes:(NSDictionary<NSAttributedStringKey,id> *)newAttributes {
    NSMutableAttributedString * newString = [[NSMutableAttributedString alloc]initWithAttributedString:attrStr];
    [newString enumerateAttributesInRange:NSMakeRange(0, attrStr.length) options:NSAttributedStringEnumerationReverse usingBlock:^(NSDictionary<NSAttributedStringKey,id> * _Nonnull attrs, NSRange range, BOOL * _Nonnull stop) {
        NSMutableDictionary * mergeAttrs = [NSMutableDictionary dictionaryWithDictionary:attrs];
        
        for (id key in newAttributes.allKeys) {
            [mergeAttrs setValue:newAttributes[key] forKey:key];
        }
        
        [newString setAttributes:mergeAttrs range:range];
    }];
    
    return [self initWithAttributedString:newString];
}

@end
