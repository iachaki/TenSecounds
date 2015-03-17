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
}
-(IBAction)start;
-(IBAction)stop;

@end

