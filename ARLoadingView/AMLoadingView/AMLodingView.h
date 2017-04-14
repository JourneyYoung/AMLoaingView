//
//  AMLodingView.h
//  ARLoadingView
//
//  Created by 俞洋 on 17/4/14.
//  Copyright © 2017年 Journey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AMLodingView : UIView

/**
 *  回调block   callback block
 */
typedef void (^AMLodingCompleteBlock) ();

/**
 *  线条宽度
 */
@property (nonatomic,assign)CGFloat lineWidth;

/**
 *  线条颜色
 */
@property (nonatomic,copy  )UIColor *strokeColor;

/**
 *  开始 start
 */
- (void)startLoading;

/**
 *  结束，视图会被移除   end, view will be removed
 */
- (void)endLoading;

/**
 *  以成功结束动画    stop animation with a success
 *
 *  @param block 回调（callback）
 */
- (void)finishSuccess:(AMLodingCompleteBlock)block;

/**
 *  以失败结束动画    stop animation with a failure
 *
 *  @param block 回调（callback）
 */
- (void)finishFailure:(AMLodingCompleteBlock)block;

@end
