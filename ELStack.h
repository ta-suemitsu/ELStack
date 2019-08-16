//
//  ELStack.h
//
//  Created by tasue on 2019/08/01.
//  Updated by tasue on 2019/08/01.
//

#import <Foundation/Foundation.h>

@interface ELStack : NSObject

@property (strong, nonatomic) NSMutableArray    *stack;

- (void)push:(NSObject *)data;
- (NSObject *)pop;
- (void)reset;

@end
