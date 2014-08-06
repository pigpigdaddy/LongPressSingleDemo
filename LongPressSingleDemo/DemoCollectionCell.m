//
//  DemoCollectionCell.m
//  LongPressSingleDemo
//
//  Created by pigpigdaddy on 14-8-6.
//  Copyright (c) 2014年 pigpigdaddy. All rights reserved.
//

#import "DemoCollectionCell.h"
#import "LongPressControl.h"

@interface DemoCollectionCell()

@property (nonatomic, strong)UILongPressGestureRecognizer *longPressGes;

@end

@implementation DemoCollectionCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.longPressGes = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressAction:)];
        self.longPressGes.delegate = self;
        [self.contentView addGestureRecognizer:self.longPressGes];
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

- (void)longPressAction:(UILongPressGestureRecognizer *)ges
{
    switch (ges.state) {
        case UIGestureRecognizerStateBegan:{
            NSLog(@"%@",[NSString stringWithFormat:@"%d===%d", self.indexPath.section, self.indexPath.row]);
        }
            break;
        case UIGestureRecognizerStateChanged:{
            
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [[LongPressControl shareInfo] removeLongPressAction:LONG_PRESS_VIEW_DEMO];
        }
            break;
        case UIGestureRecognizerStateCancelled:{
            [[LongPressControl shareInfo] removeLongPressAction:LONG_PRESS_VIEW_DEMO];
        }
            break;
        case UIGestureRecognizerStateFailed:{
            [[LongPressControl shareInfo] removeLongPressAction:LONG_PRESS_VIEW_DEMO];
        }
            break;
            
        default:
            break;
    }
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if (gestureRecognizer != self.longPressGes) {
        return NO;
    }else if ([[LongPressControl shareInfo] isExistLongPressAction:LONG_PRESS_VIEW_DEMO]){
        return NO;
    }else{
        [[LongPressControl shareInfo] addLongPressAction:LONG_PRESS_VIEW_DEMO];
        return YES;
    }
}

@end
