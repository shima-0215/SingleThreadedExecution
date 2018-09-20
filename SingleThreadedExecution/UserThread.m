//
//  UserThread.m
//  SingleThreadedExecution
//
//  Created by shima on 2018/09/21.
//  Copyright © 2018年 shima0215. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserThread.h"
#import "Gate.h"

@interface UserThread () {
    Gate *_gate;
    NSString *_myName;
    NSString *_myAddress;
}

@end

@implementation UserThread

- (id) initWithGate:(Gate*)gate name:(NSString*)myName address:(NSString*)myAddress {
    if(self = [super init]) {
        _gate = gate;
        _myName = myName;
        _myAddress = myAddress;
    }
    return self;
}

- (void) start {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self run];
    });
}

- (void) run {
    NSLog(@"%@ BEGIN",_myName);
    while (true) {
        [_gate pass:_myName address:_myAddress];
    }
}

@end
