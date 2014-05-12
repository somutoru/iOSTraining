//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"
#import "MixiSampleClass.h"
#import "NSString+HogeAddition.h"
#import "MixiSampleViewController.h"
#import "MixiPostViewController.h"

@interface ViewController ()

@property (strong, nonatomic) MixiSampleViewController *sampleVC;
@property (assign) BOOL isModalOpenSecond;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    MixiSampleClass *mixi = [[MixiSampleClass alloc] initWithName:@"mixi" sampleType:SampleTypeFuga];
    NSLog(@"mixi.name: %@", mixi.name);
    NSLog(@"mixi.name.addHoge: %@", mixi.name.addHoge);
    NSLog(@"MixiSampleClass.staticString: %@", [MixiSampleClass getStaticString]);
    _sampleVC = [[MixiSampleViewController alloc] initWithNibName:@"MixiSampleViewController" bundle:nil];
    
    self.isModalOpenSecond = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressAddButton:(id)sender {
    [self.view addSubview:_sampleVC.view];
}

- (IBAction)pressRemoveButton:(id)sender {
    [_sampleVC.view removeFromSuperview];
}

- (IBAction)buttonAddModalPushed:(id)sender {
    MixiPostViewController *postViewController = [[MixiPostViewController alloc] init];
    postViewController.delegate = self;
    [self presentViewController:postViewController animated:YES completion:nil];
}

// [6] delegate method の実装
#pragma mark - MixiPostViewControllerDelegate methods
-(void)didPressCloseButton
{
    [self dismissViewControllerAnimated:YES completion:^{
        if (self.isModalOpenSecond) {
            MixiPostViewController *postViewController = [[MixiPostViewController alloc] init];
            postViewController.delegate = self;
            [self presentViewController:postViewController animated:YES completion:nil];
        }
        self.isModalOpenSecond = YES;
    }];
}

@end