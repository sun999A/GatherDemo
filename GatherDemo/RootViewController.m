//
//  RootViewController.m
//  GatherDemo
//
//  Created by Snail iOS on 16/10/14.
//  Copyright © 2016年 Feiyu iOS. All rights reserved.
//

#import "RootViewController.h"
#import "UIView+ViewEmpty.h"
#import "ActionSheetBottom.h"
@interface RootViewController ()<ActionSheetBottomDelegate>
{
    UITableView *myTable;
}
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    [self.view showNetWorkErrorWithRefresh:^{
//        NSLog(@"刷新");
//    }];
    
//    [self.view showEmptyViewWithRefresh:^{
//         NSLog(@"返回");
//    }];
   
    
//    [self.view showWithImageName:@"h_shengxian" title:@"没有数据" detailTitle:@"" buttonTitle:@"返回" refresh:^{
//        NSLog(@"刷新");
//    }];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(0, 0, 60, 60);
    button.center = self.view.center;
    [self.view addSubview:button];
    // Do any additional setup after loading the view.
}


- (void)click{
    ActionSheetBottom *actionSheet = [[ActionSheetBottom alloc] initWithDelegate:self labelText:@"性别修改" CancelTitle:@"取消" OtherTitles:@"男", @"女", nil];
    [actionSheet show];
}

- (void)actionSheet:(ActionSheetBottom *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"第%ld个", buttonIndex);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
