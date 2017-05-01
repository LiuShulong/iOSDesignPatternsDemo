//
//  SLTPresenter.m
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import "SLTPresenter.h"
#import "SLTSuccessViewController.h"
#import "SLTSucPageWireFrame.h"

@implementation SLTPresenter

- (void)loginWithName:(NSString *)name {
    [self.interactor requestLoginWithName:name];
}

- (void)refreshAction {
    NSLog(@"refresh logic");
    [self.userInterface refresh];
}

#pragma mark - io

- (void)loginSuccess {
    SLTSuccessViewController *svc = [[SLTSuccessViewController alloc] init];
    SLTSucPageWireFrame *wire = [[SLTSucPageWireFrame alloc] init];
    wire.vc = svc;
    [wire showFromVC:(UIViewController *)self.userInterface];
}

- (void)loginFailure {
    [self.userInterface showErrorAlert];
}

@end
