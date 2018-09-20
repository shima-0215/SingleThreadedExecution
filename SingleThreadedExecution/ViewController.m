//
//  ViewController.m
//  SingleThreadedExecution
//
//  Created by shima on 2018/09/21.
//  Copyright © 2018年 shima0215. All rights reserved.
//

#import "ViewController.h"
#import "Gate.h"
#import "UserThread.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    Gate *gate = [[Gate alloc] init];
    
    [[[UserThread alloc] initWithGate:gate name:@"Alice" address:@"Alaska"] start];
    [[[UserThread alloc] initWithGate:gate name:@"Bobby" address:@"Brazil"] start];
    [[[UserThread alloc] initWithGate:gate name:@"Chris" address:@"Canada"] start];
}


@end
