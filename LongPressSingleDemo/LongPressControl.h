//
//  LongPressControl.h
//  Classroom
//
//  Created by pigpigdaddy on 14-3-24.
//  Copyright (c) 2014年 pigpigdaddy. All rights reserved.
//
//  某些界面上可能会有多个子界面，这些子界面都有自己的长按事件，如果你不想让这些长按事件先后都触发
//  可以使用本类加以控制

//  2014-04-08 增加区分手势调用

typedef enum {
    LONG_PRESS_VIEW_DEMO = 1,         
}LONG_PRESS_VIEW;

#import <Foundation/Foundation.h>

@interface LongPressControl : NSObject
{
    NSMutableArray *_arrayLongPressView;
}

#pragma mark
#pragma mark-------------创建 销毁---------------------
/**   函数名称 :shareInfo
 **   函数作用 :创建 LongPressControl 单例对象
 **   函数参数 :
 **   函数返回值:URLog 单例对象
 **/
+(LongPressControl *)shareInfo;

/**   函数名称 :freeInfo
 **   函数作用 :释放 LongPressControl 单例对象
 **   函数参数 :
 **   函数返回值:
 **/
+(void)freeInfo;

/*!
 *  TODO:添加长按事件
 *
 *  @param view 调用的view
 *
 *  @author pigpigdaddy
 */
- (void)addLongPressAction:(LONG_PRESS_VIEW)view;

/*!
 *  TODO:删除长按事件
 *
 *  @param view 调用的view
 *
 *  @author pigpigdaddy
 */
- (void)removeLongPressAction:(LONG_PRESS_VIEW)view;

/*!
 *  TODO:是否存在长按事件
 *
 *  @param view 是那个View
 *
 *  @return
 *
 *  @author pigpigdaddy
 */
- (BOOL)isExistLongPressAction:(LONG_PRESS_VIEW)view;

@end
