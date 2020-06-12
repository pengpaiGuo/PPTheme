//
//  SelectThemeCell.h
//  PPThemeDemo
//
//  Created by Pai on 2020/6/11.
//  Copyright © 2020 Pai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface SelectThemeCell : BaseCell

@property (nonatomic, weak) IBOutlet UILabel *title;
@property (nonatomic, weak) IBOutlet UIImageView *themeIcon;

@end

NS_ASSUME_NONNULL_END
