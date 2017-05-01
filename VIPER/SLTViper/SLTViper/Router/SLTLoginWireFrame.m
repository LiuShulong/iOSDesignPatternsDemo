//
//  SLTRouter.m
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import "SLTLoginWireFrame.h"

@implementation SLTLoginWireFrame

- (void)showVC:(UIViewController *)vc {
    [self.rootNav pushViewController:vc animated:YES];
}

- (void)pop {
    [self.rootNav popViewControllerAnimated:YES];
}

@end
