//
//  FlutterCustomContainer.m
//  NativeFlutterDemo
//
//  Created by Qson on 2019/4/27.
//  Copyright © 2019 Qson. All rights reserved.
//

#import "FlutterCustomContainer.h"
#import "UINavigationController+FDFullscreenPopGesture.h"

@interface FlutterCustomContainer ()

@end

@implementation FlutterCustomContainer

- (void)viewDidLoad {
    [super viewDidLoad];

    self.fd_prefersNavigationBarHidden = YES;
}


@end
