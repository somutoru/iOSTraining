//
//  MixiSampleClass.m
//  BasicObjectiveC
//
//  Created by 田中 俊之 on 2014/05/11.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import "MixiSampleClass.h"

static NSString *const constString = @"const"; // [5]クラス定数
static NSString *staticString = @"static"; // [6]クラス変数

// [7] 無名カテゴリ
@interface MixiSampleClass()

@property (nonatomic, assign) BOOL isEnabled;
@property (nonatomic, assign) SampleType sampleType;

@end

@implementation MixiSampleClass

-(id)initWithName:(NSString *)name
       sampleType:(SampleType)sampleType
{
    self = [super init];
    if(self){
        _name = name; //[8] access iVar
        _isEnabled = YES;
        _sampleType = sampleType;
        NSLog(@"self.name:%@, self.isEnable:%d, self.sampleType=%d", self.name, self.isEnabled, self.sampleType);
    }
    return self;
}

+ (NSString *)getStaticString
{
    return staticString;
}

@end
