//
//  TwoViewController.m
//  addChildViewController
//
//  Created by admin on 2017/3/25.
//  Copyright © 2017年 test. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

-(instancetype)initWithNibName{
    return [self initWithNibName:@"TwoViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)didMoveToParentViewController:(UIViewController *)parent{
    
    NSLog(@"Two VC did show");
}

-(void)willMoveToParentViewController:(UIViewController *)parent{
    
    NSLog(@"Two VC will show");
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
