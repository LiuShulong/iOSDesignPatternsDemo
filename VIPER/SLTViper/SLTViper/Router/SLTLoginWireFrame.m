//
//  SLTRouter.m
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import "SLTLoginWireFrame.h"

@implementation SLTLoginWireFrame

- (void)showLoginVC {
    self.window.rootViewController = self.vc;
    [self.window makeKeyAndVisible];
}

@end
