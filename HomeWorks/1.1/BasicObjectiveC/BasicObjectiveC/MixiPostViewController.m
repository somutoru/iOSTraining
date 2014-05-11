//
//  MixiPostViewController.m
//  BasicObjectiveC
//
//  Created by 田中 俊之 on 2014/05/12.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import "MixiPostViewController.h"

@interface MixiPostViewController ()

@end

@implementation MixiPostViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)pressClosedButton:(id)sender
{
    // [3] delegate オブジェクトにメッセージを送信
    if([_delegate respondsToSelector:@selector(didPressCloseButton)]){
        [_delegate didPressCloseButton];
    }
}

@end
