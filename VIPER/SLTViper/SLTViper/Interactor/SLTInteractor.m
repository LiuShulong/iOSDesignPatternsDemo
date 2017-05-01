//
//  SLTInteractor.m
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import "SLTInteractor.h"
#import "SLTLoginService.h"

@implementation SLTInteractor

- (void)requestLoginWithName:(NSString *)name {
    if ([name length] == 0) {
        [self.ioDelegate loginFailure];
        return;
    }
    
    [SLTLoginService requestLoginAPIWithName:name complete:^(BOOL isSuccess) {
        if (isSuccess) {
            [self.ioDelegate loginSuccess];
        } else {
            [self.ioDelegate loginFailure];
        }
    }];
    
}

@end
