//
//  MixiSampleViewController.m
//  BasicObjectiveC
//
//  Created by 田中 俊之 on 2014/05/12.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import "MixiSampleViewController.h"

@interface MixiSampleViewController ()

@end

@implementation MixiSampleViewController

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
    _grayView.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
