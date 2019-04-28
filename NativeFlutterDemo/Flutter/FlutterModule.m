//
//  FlutterModule.m
//  NativeFlutterDemo
//
//  Created by Qson on 2019/4/27.
//  Copyright © 2019 Qson. All rights reserved.
//

#import "FlutterModule.h"
#import "DemoRouter.h"
#import <nativefetch/NativefetchPlugin.h>

@interface FlutterModule () <NativefetchPluginDelegate>
@property (nonatomic, strong) DemoRouter *router;
@end

@implementation FlutterModule

+ (instancetype)shared {
    static FlutterModule *module = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        module = [[FlutterModule alloc] init];
    });
    return module;
}

- (instancetype)init {
    if (self = [super init]) {
        self.router = [[DemoRouter alloc] init];
    }
    return self;
}

- (void)setup {
    [FlutterBoostPlugin.sharedInstance startFlutterWithPlatform:self.router
                                                        onStart:^(FlutterViewController *fvc) {
                                                        }];
    [NativefetchPlugin sharedInstance].delegate = self;

}

#pragma mark - NativefetchPluginDelegate
- (void)nativefetchPluginWithMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result {
    
    // 响应flutter发过来的消息
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor blueColor];
    [FlutterBoostPlugin.sharedInstance.currentViewController.navigationController pushViewController:vc animated:YES];
}


- (void)jumpFlutterPage:(UIViewController *)pushVc {
    
    self.router.navigationController = [self getNavFromVc:pushVc];
    [self.router openPage:@"life_detail" params:@{} animated:YES completion:^(BOOL finished) {
        
    }];
}

- (UINavigationController *)getNavFromVc:(UIViewController *)pushController {
    if ([pushController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabBar = (UITabBarController *)pushController;
        if ([tabBar.selectedViewController isKindOfClass:[UINavigationController class]]) {
            return (UINavigationController *)tabBar.selectedViewController;
        } else {
            return tabBar.selectedViewController.navigationController;
        }
    } else if ([pushController isKindOfClass:[UINavigationController class]]) {
        return (UINavigationController *)pushController;
    }
    else{
        return pushController.navigationController;
    }
}
@end
