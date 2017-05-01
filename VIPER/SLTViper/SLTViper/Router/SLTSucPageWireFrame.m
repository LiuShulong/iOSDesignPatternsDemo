//
//  SLTSucPageWireFrame.m
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import "SLTSucPageWireFrame.h"

@implementation SLTSucPageWireFrame

- (void)showFromVC:(UIViewController *)vc {
    [vc presentViewController:self.vc animated:YES completion:^{
        
    }];
}

- (void)dismiss {
    [self.vc dismissViewControllerAnimated:YES completion:nil];
}

@end
