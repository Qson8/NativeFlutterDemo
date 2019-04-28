//
//  AppDelegate.m
//  NativeFlutterDemo
//
//  Created by Qson on 2019/4/20.
//  Copyright © 2019 Qson. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <Flutter/Flutter.h>
#import "FlutterModule.h"
#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
   
    ViewController *vc = [[ViewController alloc] init];
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = nvc;
    [self.window makeKeyAndVisible];
    
    [GeneratedPluginRegistrant registerWithRegistry:self];
    /// 初始化FlutterBoost
    [[FlutterModule shared] setup];

    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
