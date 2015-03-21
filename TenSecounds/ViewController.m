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

-(IBAction)start
{
    //タイマーが動作しているか調べるメソッド
    if (![timer isValid])//[time isValid]!=YESを省略した書き方
    {
    //既にタイマーが作動していなければ、開始する。
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                                 target:self
                                               selector:@selector(up)
                                               userInfo:nil
                                                repeats:YES
                 ];//0.1秒ごとにupメソッドが呼ばれるようになる！
    }
}

-(IBAction)stop
{
    count = 0.00;
    
    if ([timer isValid])//time isValid]==YESを省略した書き方
    {
        //タイマーが作動していたら、停止する
        [timer invalidate];//タイマーを停止するメソッド
    }
}

-(IBAction)clear{
    if ([timer isValid])//time isValid]==YESを省略した書き方
    {
        //タイマーが作動していたら、停止する
        [timer invalidate];//タイマーを停止するメソッド
    }
}


-(void)up
{
    count += 0.01;//count = count + 0.01を省略した書き方
    countLabel.text=[NSString stringWithFormat:@"%.2f",count];
}

@end
