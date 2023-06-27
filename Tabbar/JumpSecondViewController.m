//
//  JumpSecondViewController.m
//  Tabbar
//
//  Created by zhaoguyixia on 2023/3/29.
//

#import "JumpSecondViewController.h"
#import "UIView+HPAdditions.h"
#import "MFScreenTool.h"

@interface JumpSecondViewController ()

@end

@implementation JumpSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    label1.text = @"back prior";
    label1.textColor = [UIColor whiteColor];
    label1.userInteractionEnabled = YES;
    label1.textAlignment = NSTextAlignmentCenter;
    label1.backgroundColor = [UIColor blackColor];
    label1.centerX = MFTAB_SCREENW/2.0;
    label1.top = 200;
    [self.view addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    label2.text = @"back root";
    label2.textColor = [UIColor whiteColor];
    label2.userInteractionEnabled = YES;
    label2.textAlignment = NSTextAlignmentCenter;
    label2.backgroundColor = [UIColor blackColor];
    label2.centerX = MFTAB_SCREENW/2.0;
    label2.top = label1.bottom+40;
    [self.view addSubview:label2];
    
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(back)];
    [label1 addGestureRecognizer:tap1];
    
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(backToRoot)];
    [label2 addGestureRecognizer:tap2];
}

- (void)back{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)backToRoot{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
