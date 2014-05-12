//
//  SBTestQueue.h
//  sandbox
//
//  Created by Toshiyuki Tanaka on 2014/05/12.
//  Copyright (c) 2014年 Sandbox Name. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SBTestQueue : NSObject

- (void)push:(id)object;
- (NSInteger)size;
- (id)pop;

@end
