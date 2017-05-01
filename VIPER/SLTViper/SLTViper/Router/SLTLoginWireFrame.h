//
//  SLTRouter.h
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import <UIKit/UIKit.h>

@interface SLTLoginWireFrame : NSObject

@property (nonatomic,weak) UIWindow         *window;
@property (nonatomic,weak) UIViewController *vc;

- (void)showLoginVC;

@end
