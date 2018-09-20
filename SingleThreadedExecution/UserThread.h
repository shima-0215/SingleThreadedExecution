//
//  UserThread.h
//  SingleThreadedExecution
//
//  Created by shima on 2018/09/21.
//  Copyright © 2018年 shima0215. All rights reserved.
//

#ifndef UserThread_h
#define UserThread_h

#import <UIKit/UIKit.h>

@class Gate;

@interface UserThread : NSObject

- (id) initWithGate:(Gate*)gate name:(NSString*)myName address:(NSString*)myAddress;
- (void) start;

@end

#endif /* UserThread_h */
