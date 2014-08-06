//
//  DemoCollectionCell.h
//  LongPressSingleDemo
//
//  Created by pigpigdaddy on 14-8-6.
//  Copyright (c) 2014年 pigpigdaddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DemoCollectionCell : UICollectionViewCell<UIGestureRecognizerDelegate>

@property (nonatomic, strong)NSIndexPath *indexPath;

@end
