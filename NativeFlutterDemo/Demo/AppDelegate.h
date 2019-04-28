//
//  AppDelegate.h
//  NativeFlutterDemo
//
//  Created by Qson on 2019/4/20.
//  Copyright © 2019 Qson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DemoRouter.h"
#import  <flutter_boost/FlutterBoost.h>

@interface AppDelegate : FLBFlutterAppDelegate <UIApplicationDelegate>

@property (nonatomic, strong) DemoRouter *router;

@end

