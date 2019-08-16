# Description

ELStack is stack class of Objective-C.

ELStack is thread safe.

# Features

ELStack provides the following features.

* push
  * Push NSObject data to stack.
* pop
  * Pop NSObject data in stack.
* reset
  * Reset stack.

# Usage

```objective-c
#import "ELStack.h"

ELStack *elStack = [ELStack new];
NSNumber *firstState = @(1);
NSNumber *secondState = @(2);

// Push
[elStack push:firstState];
[elStack push:secondState];

// Pop
NSNumber *state = (NSNumber *)[elStack pop]; // State is 2

// Reset
[elStack reset];
state = [elStack pop]; // State is nil
```
