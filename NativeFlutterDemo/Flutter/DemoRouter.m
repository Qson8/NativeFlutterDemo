//
//  DemoRouter.m
//  NativeFlutterDemo
//
//  Created by Qson on 2019/4/27.
//  Copyright © 2019 Qson. All rights reserved.
//

#import "DemoRouter.h"
#import "FlutterCustomContainer.h"

@interface DemoRouter ()

@end

@implementation DemoRouter

- (void)closePage:(NSString *)uid animated:(BOOL)animated params:(NSDictionary *)params completion:(void (^)(BOOL))completion {
    FLBFlutterViewContainer *vc = (id)self.navigationController.presentedViewController;
    if([vc isKindOfClass:FLBFlutterViewContainer.class] && [vc.uniqueIDString isEqual: uid]){
        [vc dismissViewControllerAnimated:animated completion:^{}];
    }else{
        [self.navigationController popViewControllerAnimated:animated];
    }
}

- (void)openPage:(nonnull NSString *)name params:(nonnull NSDictionary *)params animated:(BOOL)animated completion:(nonnull void (^)(BOOL))completion {
    if([params[@"present"] boolValue]){
        FlutterCustomContainer *vc = [FlutterCustomContainer new];
        [vc setName:name params:params];
        [self.navigationController presentViewController:vc animated:animated completion:^{}];
    }else{
        FlutterCustomContainer *vc = [FlutterCustomContainer new];
        [vc setName:name params:params];
        [self.navigationController pushViewController:vc animated:animated];
    }
}


@end
