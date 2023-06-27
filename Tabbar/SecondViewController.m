//
//  SecondViewController.m
//  Tabbar
//
//  Created by zhaoguyixia on 2023/3/29.
//

#import "SecondViewController.h"
#import "JumpViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    JumpViewController *vc = [JumpViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
