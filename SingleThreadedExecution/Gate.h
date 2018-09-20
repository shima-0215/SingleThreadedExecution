//
//  Gate.h
//  SingleThreadedExecution
//
//  Created by shima on 2018/09/21.
//  Copyright © 2018年 shima0215. All rights reserved.
//

#ifndef Gate_h
#define Gate_h

#import <UIKit/UIKit.h>

@interface Gate : NSObject

- (void) pass:(NSString*)name address:(NSString*)address;
- (NSString*) toString;

@end

#endif /* Gate_h */
