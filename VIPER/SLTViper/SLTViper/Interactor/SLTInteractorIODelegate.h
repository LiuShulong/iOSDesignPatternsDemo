//
//  SLTInteractorIODelegate.h
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SLTInteractorIODelegate <NSObject>

- (void)loginSuccess;
- (void)loginFailure;

@end
