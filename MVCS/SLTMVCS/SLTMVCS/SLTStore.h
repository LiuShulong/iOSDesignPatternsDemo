//
//  SLTStore.h
//  SLTMVCS
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLTUserModel.h"

@class SLTStore;

@protocol SLTStoreDelegate <NSObject>

- (void)loginSuccessWithStore:(SLTStore *)store;
- (void)loginFailureWithStore:(SLTStore *)store;

@end

@interface SLTStore : NSObject

+ (instancetype)sharedInstance;

//weak reference
- (void)bindDelegate:(id<SLTStoreDelegate>)delegate;
- (void)unbindDelegate:(id<SLTStoreDelegate>)delegate;

- (void)loginWithModel:(SLTUserModel *)model;

- (NSString *)token;

@end
