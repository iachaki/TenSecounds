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
    
    if ([timer isValid])//time isValid]==YESを省略した書き方
    {
        //タイマーが作動していたら、停止する
        [timer invalidate];//タイマーを停止するメソッド
    }
}

-(IBAction)clear{
    count = 0.0;
    countLabel.text = [NSString stringWithFormat:@"0.0"];
    //clearbuttonを押すとcountLabelも0.00になるようにした
    
    if ([timer isValid])//time isValid]==YESを省略した書き方
    {
        //タイマーが作動していたら、停止する
        [timer invalidate];//タイマーを停止するメソッド
    }
}


-(void)up
{
    count += 0.1;//count = count + 0.01を省略した書き方
    countLabel.text=[NSString stringWithFormat:@"%.f",count];
}

-(void)hantei{
    if (count >= number - 0.2 && count <= number + 0.2) {
        countLabel.text = [NSString stringWithFormat:@"PERFECT!!"];
    }
}

@end
