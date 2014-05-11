//
//  NSString+HogeAddition.m
//  BasicObjectiveC
//
//  Created by 田中 俊之 on 2014/05/11.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import "NSString+HogeAddition.h"

@implementation NSString (HogeAddition)

-(NSString *)addHoge
{
    return [NSString stringWithFormat:@"%@hoge", self];
}

@end
