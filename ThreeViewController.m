//
//  ThreeViewController.m
//  addChildViewController
//
//  Created by admin on 2017/3/25.
//  Copyright © 2017年 test. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

-(instancetype)initWithNibName{
    return [self initWithNibName:@"ThreeViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(void)didMoveToParentViewController:(UIViewController *)parent{
    
    NSLog(@"Three VC did show");
}

-(void)willMoveToParentViewController:(UIViewController *)parent{
    
    NSLog(@"Three VC will show");
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
