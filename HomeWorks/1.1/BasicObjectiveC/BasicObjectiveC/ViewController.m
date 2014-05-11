//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"
#import "MixiSampleClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    MixiSampleClass *mixi = [[MixiSampleClass alloc] initWithName:@"mixi" sampleType:SampleTypeFuga];
    NSLog(@"mixi.name: %@", mixi.name);
    NSLog(@"MixiSampleClass.staticString: %@", [MixiSampleClass getStaticString]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
