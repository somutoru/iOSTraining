//
//  SBTestQueue.m
//  sandbox
//
//  Created by Toshiyuki Tanaka on 2014/05/12.
//  Copyright (c) 2014年 Sandbox Name. All rights reserved.
//

#import "SBTestQueue.h"

@interface SBTestQueue ()
@property (strong, nonatomic) NSMutableArray *queue;
@end

@implementation SBTestQueue

- (id) init {
    if (self = [super init]) {
        _queue = @[].mutableCopy;
    }
    return self;
}

- (void)push:(id)object {
    [self.queue addObject:object];
};

- (NSInteger)size {
    return self.queue.count;
};

- (id)pop {
    id obj = nil;
    if (self.queue.count) {
        obj = self.queue[0];
        [self.queue removeObjectAtIndex:0];
    }
    return obj;
};

- (NSString *)description {
    return self.queue.description;
};

@end
