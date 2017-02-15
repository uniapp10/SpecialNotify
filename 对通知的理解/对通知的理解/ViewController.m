//
//  ViewController.m
//  对通知的理解
//
//  Created by zhudong on 2017/2/15.
//  Copyright © 2017年 zhudong. All rights reserved.
//

#import "ViewController.h"
#import "ZDRedView.h"
#import "ZDNames.h"

@interface ViewController ()
@property (nonatomic, strong) ZDRedView *redV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZDRedView *redView = [[ZDRedView alloc] initWithFrame:CGRectMake(10, 100, 300, 200)];
    self.redV = redView;
    [self.view addSubview:redView];
    
    [[NSNotificationCenter defaultCenter] addObserver:redView selector:@selector(changeLabel) name:ChangeNotify object:nil];
}
- (IBAction)btnClick {
    [[NSNotificationCenter defaultCenter] postNotificationName:ChangeNotify object:nil];
}

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self.redV];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
