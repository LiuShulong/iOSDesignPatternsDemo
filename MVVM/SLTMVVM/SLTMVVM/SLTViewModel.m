//
//  SLTViewModel.m
//  SLTMVVM
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import "SLTViewModel.h"

@implementation SLTViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _userModel = [[SLTUserModel alloc] init];
    }
    return self;
}

- (void)login {
    
    if ([self.userModel.name length] == 0) {
        self.loginStatus = NO;
        return;
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.loginStatus = YES;
    });
    
}

@end
