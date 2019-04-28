//
//  FlutterModule.h
//  NativeFlutterDemo
//
//  Created by Qson on 2019/4/27.
//  Copyright © 2019 Qson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlutterModule : NSObject

+ (instancetype)shared;
- (void)setup;

- (void)jumpFlutterPage:(UIViewController *)pushVc;
@end

NS_ASSUME_NONNULL_END
