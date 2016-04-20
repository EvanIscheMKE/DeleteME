//
//  HDCollectionViewController.m
//  FlatColorsCategories
//
//  Created by Evan Ische on 4/20/16.
//  Copyright © 2016 Evan William Ische. All rights reserved.
//

#import "HDCollectionViewController.h"
#import "HDCollectionViewCell.h"
#import "HDColorManager.h"

NSString * const HDReuseIdentifer = @"reuseIdentifier";

@implementation HDCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.collectionView registerClass:[HDCollectionViewCell class] forCellWithReuseIdentifier:HDReuseIdentifer];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[HDColorManager sharedManager] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    HDColor *model = [[HDColorManager sharedManager] modelAtIndex:indexPath.row];
    
    HDCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:HDReuseIdentifer forIndexPath:indexPath];
    cell.backgroundColor = model.color;
    cell.titleLabel.text = model.name;
    
    return cell;
}

@end
