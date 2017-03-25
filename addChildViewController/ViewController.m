//
//  ViewController.m
//  addChildViewController
//
//  Created by admin on 2017/3/25.
//  Copyright © 2017年 test. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    OneViewController *oneVC;
    TwoViewController *twoVC;
    ThreeViewController *threeVC;
    UIViewController *currentVC;
    CGRect frame;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initTabTitle];
    
    //设置子VC位置
    frame = CGRectMake(0, 80, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    
    //初始化布局
    oneVC = [[OneViewController alloc] initWithNibName];
    oneVC.view.frame = frame;
    
    twoVC = [[TwoViewController alloc] initWithNibName];
    twoVC.view.frame = frame;
    
    threeVC = [[ThreeViewController alloc] initWithNibName];
    threeVC.view.frame = frame;
    //开始加载的子VC
    currentVC = oneVC;
    [self.view addSubview:currentVC.view];
    [self addChildViewController:currentVC];
    //tab的点击事件
    [self.btnOne addTarget:self action:@selector(clickOne) forControlEvents:UIControlEventTouchUpInside];
    [self.btnTwo addTarget:self action:@selector(clickTwo) forControlEvents:UIControlEventTouchUpInside];
    [self.btnThree addTarget:self action:@selector(clickThree) forControlEvents:UIControlEventTouchUpInside];
    
}


-(void)clickOne{
    [self moveVC:currentVC addVC:oneVC];
}

-(void)clickTwo{
    [self moveVC:currentVC addVC:twoVC];
}

-(void)clickThree{
    [self moveVC:currentVC addVC:threeVC];
}

//切换子VC
-(void)moveVC:(UIViewController *)oldVC addVC:(UIViewController *)newVC{
    
    [self addChildViewController:newVC];
    
    [self transitionFromViewController:currentVC toViewController:newVC duration:0.3 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
    } completion:^(BOOL finished) {
        if (finished) {
            //移除当前子VC
            [currentVC removeFromParentViewController];
            //添加新子VC
            currentVC = newVC;
            [self.view addSubview:currentVC.view];
            [self addChildViewController:currentVC];
        }
    }];
}

-(void)initTabTitle{
    int rowWidth = [UIScreen mainScreen].bounds.size.width/3;
    
    CGRect tabOneFrame = self.btnOne.frame;
    tabOneFrame.origin.x = (rowWidth-tabOneFrame.size.width)/2;
    tabOneFrame.origin.y = 0;
    self.btnOne.frame = tabOneFrame;
    
    CGRect tabTwoFrame = self.btnTwo.frame;
    tabTwoFrame.origin.x = rowWidth + (rowWidth-tabTwoFrame.size.width)/2;
    tabTwoFrame.origin.y = 0;
    self.btnTwo.frame = tabTwoFrame;
    
    CGRect tabThreeFrame = self.btnThree.frame;
    tabThreeFrame.origin.x = 2*rowWidth + (rowWidth-tabThreeFrame.size.width)/2;
    tabThreeFrame.origin.y = 0;
    self.btnThree.frame = tabThreeFrame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
