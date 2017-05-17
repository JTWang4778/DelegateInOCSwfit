//
//  ViewController.m
//  DelegateInOCSwfit
//
//  Created by 王锦涛 on 2017/5/17.
//  Copyright © 2017年 JTWang. All rights reserved.
//

#import "ViewController.h"
#import "DelegateInOCSwfit-Swift.h"

@interface ViewController ()<SwiftViewDelegate>

@property (nonatomic,strong)SwiftView *swiftView;

@end

@implementation ViewController

- (IBAction)didClickShowButton:(id)sender {
    
    self.swiftView = [[SwiftView alloc] initWithFrame:self.view.bounds];
    self.swiftView.delegate = self;
    [self.view addSubview:self.swiftView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark 代理方法  只实现了一个  还有另外一个
- (void)removeSwiftView{
    [self.swiftView removeFromSuperview];
    self.swiftView = nil;
}


@end
