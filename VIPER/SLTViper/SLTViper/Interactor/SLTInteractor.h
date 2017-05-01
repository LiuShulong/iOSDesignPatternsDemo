//
//  SLTInteractor.h
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLTInteractorDelegate.h"
#import "SLTInteractorIODelegate.h"

@interface SLTInteractor : NSObject<SLTInteractorDelegate>
@property (nonatomic,weak) id<SLTInteractorIODelegate> ioDelegate;
@end
