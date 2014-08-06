//
//  DemoCollectionView.m
//  LongPressSingleDemo
//
//  Created by pigpigdaddy on 14-8-6.
//  Copyright (c) 2014年 pigpigdaddy. All rights reserved.
//

#import "DemoCollectionView.h"
#import "DemoCollectionCell.h"

@interface DemoCollectionView()<UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation DemoCollectionView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        
        [flowLayout setItemSize:CGSizeMake(70, 70)];
        [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
        flowLayout.sectionInset = UIEdgeInsetsMake(0, 10, 10, 10);
        
        self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 30, 320, self.bounds.size.height-50) collectionViewLayout:flowLayout];
        self.collectionView.backgroundColor = [UIColor lightGrayColor];
        self.collectionView.exclusiveTouch = YES;
        self.collectionView.delegate = self;
        self.collectionView.dataSource = self;
        [self.collectionView registerClass:[DemoCollectionCell class] forCellWithReuseIdentifier:@"DemoCollectionCell"];
        [self addSubview:self.collectionView];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    DemoCollectionCell *cell =[collectionView dequeueReusableCellWithReuseIdentifier:@"DemoCollectionCell"
                                                              forIndexPath:indexPath];
    cell.backgroundColor = [UIColor darkGrayColor];
    cell.indexPath = indexPath;
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 4;
}



@end
