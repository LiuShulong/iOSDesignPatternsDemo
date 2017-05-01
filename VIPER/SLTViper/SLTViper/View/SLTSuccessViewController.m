//
//  SLTSuccessViewController.m
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import "SLTSuccessViewController.h"

@interface SLTSuccessViewController ()

@end

@implementation SLTSuccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 60, CGRectGetWidth(self.view.frame), 44)];
    label.text = @"Login Success!";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
}

@end
