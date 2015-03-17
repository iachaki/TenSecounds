//
//  ViewController.m
//  TenSecounds
//
//  Created by ia on 2015/03/13.
//  Copyright (c) 2015年 Life is tech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    count = 0.0 ;
    countLabel.text = [NSString stringWithFormat:@"%.2f",count];
    NSTimer *timer ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
