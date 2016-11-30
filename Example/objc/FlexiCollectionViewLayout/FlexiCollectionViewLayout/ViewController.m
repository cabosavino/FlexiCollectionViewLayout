//
//  ViewController.m
//  FlexiCollectionViewLayout
//
//  Created by Deepak Kumar on 11/30/16.
//  Copyright © 2016 Deepak Kumar. All rights reserved.
//

#import "ViewController.h"
#import "FlexiCollectionViewLayout-Swift.h"
#import "HKCell.h"

@interface ViewController ()<FlexiCollectionViewLayoutDelegate>
@property (nonatomic, strong) NSArray *hongKongPhotos;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.hongKongPhotos = @[[UIImage imageNamed: @"beach"], [UIImage imageNamed: @"boat"], [UIImage imageNamed: @"brucelee"], [UIImage imageNamed: @"dragonboat"], [UIImage imageNamed: @"icc"], [UIImage imageNamed: @"icclightshow"], [UIImage imageNamed: @"ifc"], [UIImage imageNamed: @"island"], [UIImage imageNamed: @"lantau"], [UIImage imageNamed: @"oceanpark"], [UIImage imageNamed: @"orange"], [UIImage imageNamed: @"panda"], [UIImage imageNamed: @"sunset"], [UIImage imageNamed: @"thepeak"], [UIImage imageNamed: @"tram"]];
    
    FlexiCollectionViewLayout *layout = [[FlexiCollectionViewLayout alloc] init];
    [self.collectionView setCollectionViewLayout:layout];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 3;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 28;
            break;
        case 1:
            return 20;
            break;
        case 2:
            return 24;
            break;
        default:
            return 24;
            break;
    }
}

- (ItemSizeAttributes *)collectionView:(UICollectionView *)collectionView layout:(FlexiCollectionViewLayout *)collectionViewLayout sizeForFlexiItemAt:(NSIndexPath *)indexPath {
    return [[ItemSizeAttributes alloc] initWithItemSize:CGSizeMake(120, 120) layoutSize:FlexiCellSizeRegular widthFactor:1 heightFactor:1];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    HKCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"HKCellReuseID" forIndexPath:indexPath];
    [cell.imageView setImage: _hongKongPhotos[indexPath.item % _hongKongPhotos.count] ];
    [cell.textLabel setText: [NSString stringWithFormat:@"Image %ld", (long)indexPath.item]];
    return cell;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 2;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsZero;
}



@end
