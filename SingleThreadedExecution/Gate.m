//
//  Gate.m
//  SingleThreadedExecution
//
//  Created by shima on 2018/09/21.
//  Copyright © 2018年 shima0215. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gate.h"

@interface Gate () {
    NSInteger _counter;
    NSString *_name;
    NSString *_address;
}

@end

@implementation Gate

- (id) init {
    if(self = [super init]) {
        _counter = 0;
        _name = @"Nobody";
        _address = @"nowhere";
    }
    return self;
}

- (void) pass:(NSString*)name address:(NSString*)address {

    @synchronized(self) {
        _counter++;
        _name = name;
        _address = address;
        
        [self check];
    }
}

- (NSString*) toString {
    
    NSString *ret;
    
    @synchronized(self) {
        ret = [NSString stringWithFormat:@"No. %@ %@, %@", @(_counter), _name, _address];
    }
    return ret;
}

- (void) check {
    if(![[_name substringToIndex:1] isEqualToString:[_address substringToIndex:1]]) {
        NSLog(@"**** BROKEN **** %@", [self toString]);
    }
}

@end
