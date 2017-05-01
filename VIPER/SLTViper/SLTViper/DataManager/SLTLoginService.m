//
//  SLTLoginService.m
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import "SLTLoginService.h"

@implementation SLTLoginService

+ (void)requestLoginAPIWithName:(NSString *)name complete:(void (^)(BOOL))complete {
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (complete) {
            complete(YES);
        }
    });
    
}

@end
