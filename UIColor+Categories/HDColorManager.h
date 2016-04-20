//
//  HDColorManager.h
//  FlatColorsCategories
//
//  Created by Evan Ische on 4/20/16.
//  Copyright © 2016 Evan William Ische. All rights reserved.
//

@import UIKit;
@import Foundation;

@interface HDColor : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *hex;
@property (nonatomic, copy) NSString *rgb;
@property (nonatomic, copy) NSString *rgba;
@property (nonatomic, strong) UIColor *color;
@end

@interface HDColorManager : NSObject
+ (HDColorManager *)sharedManager;
- (HDColor *)modelAtIndex:(NSInteger)index;
- (NSInteger)count;
@end
