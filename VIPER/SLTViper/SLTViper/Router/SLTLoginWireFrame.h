//
//  SLTRouter.h
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SLTLoginWireFrame : NSObject

@property (nonatomic,strong) UINavigationController *rootNav;

- (void)showVC:(UIViewController *)vc;

- (void)pop;

@end
