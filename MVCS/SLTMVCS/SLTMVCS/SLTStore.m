//
//  SLTStore.m
//  SLTMVCS
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import "SLTStore.h"

@interface SLTStore ()

@property (nonatomic,strong) NSHashTable *table;
@property (nonatomic,copy) NSString *token;

@end

@implementation SLTStore

+ (instancetype)sharedInstance {
    
    static dispatch_once_t onceToken;
    static SLTStore *store;
    dispatch_once(&onceToken, ^{
        store = [[SLTStore alloc] init];
    });
    return store;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _table = [NSHashTable hashTableWithOptions:NSPointerFunctionsWeakMemory];
    }
    return self;
}

- (void)bindDelegate:(id<SLTStoreDelegate>)delegate {
    
    if ([_table containsObject:delegate]) {
        return;
    }
    [_table addObject:delegate];
    
}

- (void)unbindDelegate:(id<SLTStoreDelegate>)delegate {
    [_table removeObject:delegate];
}

- (NSString *)token {
    return _token;
}

- (void)loginWithModel:(SLTUserModel *)model {
    
    if ([model.name length] == 0) {
        [self.table.allObjects enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([obj conformsToProtocol:@protocol(SLTStoreDelegate)] && [obj respondsToSelector:@selector(loginFailureWithStore:)]) {
                [obj loginFailureWithStore:self];
            }
        }];
        return;
    }
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        _token = @"11";//save token to disk
        [self.table.allObjects enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([obj conformsToProtocol:@protocol(SLTStoreDelegate)] && [obj respondsToSelector:@selector(loginSuccessWithStore:)]) {
                [obj loginSuccessWithStore:self];
            }
        }];
    });
    
}

@end
