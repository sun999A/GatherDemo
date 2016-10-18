//
//  ActionSheetBottom.h
//  GatherDemo
//
//  Created by Snail iOS on 16/10/18.
//  Copyright © 2016年 Feiyu iOS. All rights reserved.
//

#import <UIKit/UIKit.h>


@class ActionSheetBottom;

@protocol ActionSheetBottomDelegate <NSObject>

@optional

- (void)actionSheet:(ActionSheetBottom *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;

@end

@interface ActionSheetBottom : UIView

@property (nonatomic, weak) id<ActionSheetBottomDelegate> delegate;

- (instancetype)initWithDelegate:(id<ActionSheetBottomDelegate>)delegate
                       labelText:(NSString *)title
                     CancelTitle:(NSString *)cancelTitle
                     OtherTitles:(NSString *)otherTitles ,... NS_REQUIRES_NIL_TERMINATION;

- (void)show;

@end
