//
//  SLTLog.m
//  SLTAspect
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import "SLTLog.h"
#import <UIKit/UIKit.h>
#import <Aspects/Aspects.h>

@implementation SLTLog

+ (void)start {
    
    [UIViewController aspect_hookSelector:NSSelectorFromString(@"dealloc") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSString *clasName = NSStringFromClass([aspectInfo.instance class]);
        NSString *msg = [NSString stringWithFormat:@"className:%@ dealloc",clasName];
        [self log:msg];
    } error:NULL];
    
    
    [UIViewController aspect_hookSelector:@selector(viewWillAppear:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSString *clasName = NSStringFromClass([aspectInfo.instance class]);
        NSString *msg = [NSString stringWithFormat:@"className:%@ willAppear",clasName];
        [self log:msg];
    } error:NULL];
}

+ (void)log:(NSString *)event {
    NSString *msg = [NSString stringWithFormat:@"%@",event];
    NSLog(@"%@",msg);
}

@end
