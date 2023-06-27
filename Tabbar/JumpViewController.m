//
//  JumpViewController.m
//  Tabbar
//
//  Created by zhaoguyixia on 2023/3/29.
//

#import "JumpViewController.h"
#import "JumpSecondViewController.h"

@interface JumpViewController ()

@end

@implementation JumpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    JumpSecondViewController *vc = [JumpSecondViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
