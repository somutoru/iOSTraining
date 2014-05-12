//
//  SBTestStack.m
//  sandbox
//
//  Created by Toshiyuki Tanaka on 2014/05/12.
//  Copyright (c) 2014年 Sandbox Name. All rights reserved.
//

#import "SBTestStack.h"

@interface SBTestStack ()
@property (strong, nonatomic) NSMutableArray *stack;
@end

@implementation SBTestStack
- (id) init {
    if (self = [super init]) {
        _stack = @[].mutableCopy;
    }
    return self;
}

- (void)push:(id)object {
    [self.stack addObject:object];
};

- (NSInteger)size {
    return self.stack.count;
};

- (id)pop {
    id obj = nil;
    if (self.stack.count) {
        NSInteger last_obj_index = self.stack.count - 1;
        obj = self.stack[last_obj_index];
        [self.stack removeObjectAtIndex:last_obj_index];
    }
    return obj;
};

- (NSString *)description {
    return self.stack.description;
};


@end
