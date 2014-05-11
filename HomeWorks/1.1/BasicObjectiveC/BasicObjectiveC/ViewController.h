//
//  ViewController.h
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MixiPostViewController.h"

@interface ViewController : UIViewController <MixiPostViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *buttonAdd;
@property (weak, nonatomic) IBOutlet UIButton *buttonRemove;
@property (weak, nonatomic) IBOutlet UIButton *buttonAddModal;

@end
