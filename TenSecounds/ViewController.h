//
//  ViewController.h
//  TenSecounds
//
//  Created by ia on 2015/03/13.
//  Copyright (c) 2015年 Life is tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *countLabel;
    
    float count;//少数を入れる変数の型
    
    NSTimer *timer ;//NSTimerという参照型
    
    IBOutlet UILabel *hanteiLabel;
}
-(IBAction)start;
-(IBAction)stop;
-(IBAction)clear;

-(void)up;//upというメソッドを宣言、up→返り値も引数もないメソッド
-(void)hantei;
@end

