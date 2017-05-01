//
//  SLTPresenter.h
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLTPresenterDelegate.h"
#import "SLTInteractorDelegate.h"
#import "SLTInteractorIODelegate.h"
#import "SLTViewDelegate.h"

@interface SLTPresenter : NSObject<SLTPresenterDelegate,SLTInteractorIODelegate>

@property (nonatomic,strong) id<SLTInteractorDelegate>              interactor;
@property (nonatomic,weak)   id<SLTViewDelegate>                    userInterface;

@end
