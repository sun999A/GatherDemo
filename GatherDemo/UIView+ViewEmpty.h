//
//  UIView+ViewEmpty.h
//  GatherDemo
//
//  Created by Snail iOS on 16/10/18.
//  Copyright © 2016年 Feiyu iOS. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void(^RefreshBlock)();

@interface UIView (ViewEmpty)

@property (nonatomic, strong, readonly) UIView *bottomView;

@property (nonatomic, copy) RefreshBlock block;

- (void)showNetWorkErrorWithRefresh:(RefreshBlock)block;

- (void)showEmptyViewWithRefresh:(RefreshBlock)block;

- (void)showWithImageName:(NSString *)imageName
                    title:(NSString *)title
              detailTitle:(NSString *)detailTitle
              buttonTitle:(NSString *)buttonTitle
                  refresh:(RefreshBlock)block;

- (void)removeEmptyView;
@end
