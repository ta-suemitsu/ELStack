//
//  ELStack.m
//
//  Created by tasue on 2019/08/01.
//  Updated by tasue on 2019/08/01.
//

#import "ELStack.h"

@implementation ELStack

/**
 Initialize ELStack
 
 @return ELStack
 */
- (instancetype)init {
    self = [super init];
    if(self)
    {
        self.stack = [NSMutableArray new];
    }
    
    return self;
}


/**
 Push data to stack
 
 @param data of NSObject
 */
- (void)push:(NSObject *)data {
    @synchronized (self) {
        [self.stack addObject:data];
    }
}

/**
 Pop data in stack
 
 @return data of NSObject
 */
- (NSObject *)pop {
    NSObject *data = nil;
    
    @synchronized (self) {
        if(self.stack.count > 0) {
            data = self.stack.lastObject;
            [self.stack removeLastObject];
        }
    }
    
    return data;
}

/**
 Reset stack
 
 @return data
 */
- (void)reset {
    @synchronized (self) {
        [self.stack removeAllObjects];
    }
}

@end
