//
//  ViewController.m
//  WMZCode
//
//  Created by wmz on 2018/12/14.
//  Copyright © 2018年 wmz. All rights reserved.
//

#import "ViewController.h"
#import "WMZCodeView.h"
#import "TranslucentMaskView.h"
@interface ViewController ()

@property(nonatomic,strong)WMZCodeView *codeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSArray *arr = @[@"拼图验证",@"点击文本验证",@"九宫格验证",@"滑动验证"];
//
//    for (int i = 0; i<arr.count; i++) {
//        CGFloat X = (i % 2) * ([UIScreen mainScreen].bounds.size.width/3 + 20);
//        CGFloat Y = (i / 2) * (40 + 20);
//        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//        btn.tag = i;
//        btn.backgroundColor = [UIColor cyanColor];
//        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        [btn setTitle:arr[i] forState:UIControlStateNormal];
//        [btn addTarget:self action:@selector(tapAction:) forControlEvents:UIControlEventTouchUpInside];
//        btn.frame = CGRectMake(X+50, Y+[UIScreen mainScreen].bounds.size.height*0.7, [UIScreen mainScreen].bounds.size.width/3, 40);
//        [self.view addSubview:btn];
//    }
    
    self.view.backgroundColor=[UIColor redColor];
    
    
//    self.codeView = [[WMZCodeView shareInstance] addCodeViewWithType:0 withImageName:@"A" witgFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)  withBlock:^(BOOL success) {
//        if (success) {
//            NSLog(@"成功");
//        }
//    }];
//    [self.view addSubview:self.codeView];
    
    
    TranslucentMaskView*translucentMaskView=[[TranslucentMaskView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.view addSubview:translucentMaskView];
    
}

- (void)tapAction:(UIButton*)btn{
    [self.codeView removeFromSuperview];
    
    //使用方法
    self.codeView = [[WMZCodeView shareInstance] addCodeViewWithType:btn.tag withImageName:@"A" witgFrame:CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 50)  withBlock:^(BOOL success) {
        if (success) {
            NSLog(@"成功");
        }
    }];
    
    
   [self.view addSubview:self.codeView];

}

@end
