//
//  HDColorManager.m
//  FlatColorsCategories
//
//  Created by Evan Ische on 4/20/16.
//  Copyright © 2016 Evan William Ische. All rights reserved.
//

#import "HDColorManager.h"
#import "UIColor+ColorAdditions.h"

@implementation HDColor

- (instancetype)initWithTitle:(NSString *)title
                          rgb:(NSString *)rgb
                         rgba:(NSString *)rgba
                          hex:(NSString *)hex
                        color:(UIColor *)color {
    if (self = [super init]) {
        self.name = title;
        self.rgb = rgb;
        self.rgba = rgba;
        self.hex = hex;
        self.color = color;
    }
    return self;
}

@end

@interface HDColorManager ()
@property (nonatomic, readonly) NSArray *colors;
@end

@implementation HDColorManager {
    NSArray *_colors;
}

+ (HDColorManager *)sharedManager {
    static HDColorManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[HDColorManager alloc] init];
    });
    return manager;
}

- (NSInteger)count {
    return self.colors.count;
}

- (HDColor *)modelAtIndex:(NSInteger)index {
    return self.colors[index];
}

- (NSArray *)colors {
    
    if (_colors) {
        return _colors;
    }
    
    NSMutableArray *colorz = [NSMutableArray new];
    
    /* Row 1 */
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Turquoise"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#1ABC9C"
                                               color:[UIColor flatTurquoiseColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Emerald"
                                                 rgb:@""
                                                 rgba:@""
                                                 hex:@"#2ECC71"
                                               color:[UIColor flatEmeraldColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Peter River"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#3498DB"
                                               color:[UIColor flatPeterRiverColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Amethyst"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#9B59B6"
                                               color:[UIColor flatAmethystColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Wet Asphalt"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#34495E"
                                               color:[UIColor flatWetAsphaltColor]]];
    /* Row 2 */
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Green Sea"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#BD3525"
                                               color:[UIColor flatGreenSeaColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Nephritis"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#1abc9c"
                                               color:[UIColor flatNephritisColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Belize Hole"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#1abc9c"
                                               color:[UIColor flatBelizeHoleColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Wisteria"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#1abc9c"
                                               color:[UIColor flatWisteriaColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Midnight Blue"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#1abc9c"
                                               color:[UIColor flatMidnightBlueColor]]];
    /* Row 3 */
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Sun Flower"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#1ABC9C"
                                               color:[UIColor flatSunFlowerColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Carrot"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#2ECC71"
                                               color:[UIColor flatCarrotColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Alizarin"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#3498DB"
                                               color:[UIColor flatAlizarinColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Clouds"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#9B59B6"
                                               color:[UIColor flatCloudsColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Concrete"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#34495E"
                                               color:[UIColor flatConcreteColor]]];
    /* Row 4 */
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Orange"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#BD3525"
                                               color:[UIColor flatOrangeColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Pumpkin"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#1abc9c"
                                               color:[UIColor flatPumpkinColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Pomegranate"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#1abc9c"
                                               color:[UIColor flatPomegranateColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Silver"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#1abc9c"
                                               color:[UIColor flatSilverColor]]];
    [colorz addObject:[[HDColor alloc] initWithTitle:@"Asbestos"
                                                 rgb:@""
                                                rgba:@""
                                                 hex:@"#1abc9c"
                                               color:[UIColor flatAsbestosColor]]];
    _colors = colorz;
    return _colors;
}

@end
