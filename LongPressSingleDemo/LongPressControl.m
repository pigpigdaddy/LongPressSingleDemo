//
//  LongPressControl.m
//  Classroom
//
//  Created by pigpigdaddy on 14-3-24.
//  Copyright (c) 2014年 pigpigdaddy. All rights reserved.
//

#import "LongPressControl.h"

@implementation LongPressControl

static LongPressControl *_longPressControl = nil;

#pragma mark
#pragma mark-------------创建 销毁---------------------
/**   函数名称 :shareInfo
 **   函数作用 :创建 LongPressControl 单例对象
 **   函数参数 :
 **   函数返回值:URLog 单例对象
 **/
+(LongPressControl *)shareInfo
{
    @synchronized(self){
        if (!_longPressControl) {
            _longPressControl = [[self alloc] init];
        }
    }
    return _longPressControl;
}

/**   函数名称 :freeInfo
 **   函数作用 :释放 LongPressControl 单例对象
 **   函数参数 :
 **   函数返回值:
 **/
+(void)freeInfo
{
    if (_longPressControl) {
        _longPressControl=nil;
    }
}

- (id)init{
    self = [super init];
    if (self) {
        _arrayLongPressView = [[NSMutableArray alloc] init];
    }
    return self;
}

/*!
 *  TODO:添加长按事件
 *
 *  @param view 调用的view
 *
 *  @author pigpigdaddy
 */
- (void)addLongPressAction:(LONG_PRESS_VIEW)view
{
    [_arrayLongPressView addObject:[NSString stringWithFormat:@"%d", view]];
}

/*!
 *  TODO:删除长按事件
 *
 *  @param view 调用的view
 *
 *  @author pigpigdaddy
 */
- (void)removeLongPressAction:(LONG_PRESS_VIEW)view
{
    if ([_arrayLongPressView containsObject:[NSString stringWithFormat:@"%d", view]]) {
        [_arrayLongPressView removeObject:[NSString stringWithFormat:@"%d", view]];
    }
}

/*!
 *  TODO:是否存在长按事件
 *
 *  @param view 是那个View
 *
 *  @return
 *
 *  @author pigpigdaddy
 */
- (BOOL)isExistLongPressAction:(LONG_PRESS_VIEW)view
{
    return [_arrayLongPressView containsObject:[NSString stringWithFormat:@"%d", view]];
}

@end
