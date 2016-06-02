//
//  ViewController.m
//  ZZH_AnimationProject
//
//  Created by zhangzhihua on 16/6/2.
//  Copyright © 2016年 zhangzhihua. All rights reserved.
//

#import "ViewController.h"

#import "ZZH_AnimationTool.h"

#define ZZHANIMATIONTOOL [ZZH_AnimationTool Default]

@interface ViewController (){
    UIButton *_testButton;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _testButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _testButton.backgroundColor = [UIColor redColor];
    _testButton.frame =CGRectMake(0, 0, 40, 40);
    _testButton.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    [_testButton addTarget:self action:@selector(moveButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_testButton];
    
}

-(void)moveButton{
    [[ZZH_AnimationTool Default]setviewSizeAndCenter_FromBounds:CGRectMake(0, 0, 20, 20) toBounds:CGRectMake(0, 0, 100, 100) FromCenter:CGPointMake(20, 20) toCenter:CGPointMake(20, 400) moveView:_testButton Durationtime:1];
    
//    [ZZHANIMATIONTOOL setviewSize_FromValue:CGRectMake(0, 0, 0, 0) toValue:CGRectMake(0, 0, 100, 100) moveView:_testButton Durationtime:1];
//    [ZZHANIMATIONTOOL setviewCenter_FromValue:_testButton.center toValue:CGPointMake(_testButton.center.x, 600) moveView:_testButton Durationtime:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
