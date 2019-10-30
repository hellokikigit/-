//
//  TranslucentMaskView.m
//  NewMedicineUSer
//
//  Created by 李熙岳 on 2017/3/7.
//  Copyright © 2017年 huiji. All rights reserved.
//

#import "TranslucentMaskView.h"
#import "WMZCodeView.h"

@implementation TranslucentMaskView


-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        self.backgroundColor=[UIColor clearColor];
        
        UIButton*btn=[UIButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundColor:[UIColor colorWithRed:116/255.0 green:116/255.0 blue:116/255.0 alpha:0.5]];
        [btn setTitle:@"" forState:UIControlStateNormal];
        btn.frame=frame;
        [btn addTarget:self action:@selector(translucentMaskViewHide) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        
        
        WMZCodeView*codeView = [[WMZCodeView shareInstance] addCodeViewWithType:0 withImageName:@"A" witgFrame:CGRectMake(0, 150, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)  withBlock:^(BOOL success) {
            if (success) {
                NSLog(@"成功");
            }
        }];
        [self addSubview:codeView];
        
    }
    return self;
}

-(void)translucentMaskViewHide{

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
