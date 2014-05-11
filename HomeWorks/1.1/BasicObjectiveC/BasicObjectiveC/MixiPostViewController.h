//
//  MixiPostViewController.h
//  BasicObjectiveC
//
//  Created by 田中 俊之 on 2014/05/12.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MixiPostViewControllerDelegate <NSObject>

-(void)didPressCloseButton;

@end

@interface MixiPostViewController : UIViewController

@property (nonatomic, weak) id <MixiPostViewControllerDelegate> delegate; // [2] delegate オブジェクト
@property (weak, nonatomic) IBOutlet UIButton *buttonBack;
- (IBAction)pressClosedButton:(id)sender;

@end
