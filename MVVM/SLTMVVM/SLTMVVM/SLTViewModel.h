//
//  SLTViewModel.h
//  SLTMVVM
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLTUserModel.h"

@interface SLTViewModel : NSObject

@property (nonatomic,copy) SLTUserModel *userModel;
@property (nonatomic,assign) BOOL loginStatus;

- (void)login;

@end
