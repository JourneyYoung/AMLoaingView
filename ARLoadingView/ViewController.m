//
//  ViewController.m
//  ARLoadingView
//
//  Created by 俞洋 on 17/4/14.
//  Copyright © 2017年 Journey. All rights reserved.
//

#import "ViewController.h"
#import "AMLodingView.h"
@interface ViewController ()

@property(nonatomic,strong)AMLodingView *loadingView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.loadingView = [[AMLodingView alloc]initWithFrame:CGRectMake(200, 300, 50, 50)];
    self.loadingView.lineWidth = 2;
    self.loadingView.strokeColor = [UIColor redColor];
    self.loadingView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.loadingView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)show:(id)sender {
    [self.loadingView startLoading];
}

- (IBAction)success:(id)sender {
    [self.loadingView finishSuccess:nil];
}

- (IBAction)fail:(id)sender {
    [self.loadingView finishFailure:nil];
}

@end
