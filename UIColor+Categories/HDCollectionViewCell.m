//
//  HDCollectionViewCell.m
//  FlatColorsCategories
//
//  Created by Evan Ische on 4/20/16.
//  Copyright © 2016 Evan William Ische. All rights reserved.
//

#import "HDCollectionViewCell.h"

static const CGFloat kPadding = 5.0f;

@implementation HDCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        self.titleLabel = [[UILabel alloc] init];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.textColor = [UIColor whiteColor];
        self.titleLabel.font = [UIFont fontWithName:@"GillSans" size:14.0f];
        [self.contentView addSubview:self.titleLabel];
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self.titleLabel sizeToFit];
    self.titleLabel.center = CGPointMake(CGRectGetMidX(self.titleLabel.bounds) + kPadding,
                                         CGRectGetHeight(self.contentView.bounds) - CGRectGetMidY(self.titleLabel.bounds) - kPadding);
    self.titleLabel.frame = CGRectIntegral(self.titleLabel.frame);
}

@end
