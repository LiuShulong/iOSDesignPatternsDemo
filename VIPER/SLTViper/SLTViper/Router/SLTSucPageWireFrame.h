//
//  SLTSucPageWireFrame.h
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SLTSuccessViewController.h"

@interface SLTSucPageWireFrame : NSObject

@property (nonatomic,weak) SLTSuccessViewController *vc;

- (void)showFromVC:(UIViewController *)vc;
- (void)dismiss;

@end
