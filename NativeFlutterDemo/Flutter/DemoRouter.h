//
//  DemoRouter.h
//  NativeFlutterDemo
//
//  Created by Qson on 2019/4/27.
//  Copyright © 2019 Qson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import  <flutter_boost/FlutterBoost.h>

NS_ASSUME_NONNULL_BEGIN

@interface DemoRouter : NSObject <FLBPlatform>
@property (nonatomic, strong) UINavigationController *navigationController;

@end

NS_ASSUME_NONNULL_END
