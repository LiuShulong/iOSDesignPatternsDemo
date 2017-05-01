//
//  ViewController.m
//  SLTMVVM
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import "ViewController.h"
#import "SLTUserModel.h"
#import "SLTViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface ViewController ()

@property (nonatomic,strong) UITextField *textField;
@property (nonatomic,strong) UIButton    *loginButton;

@property (nonatomic,strong) SLTViewModel *viewModel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.textField];
    [self.view addSubview:self.loginButton];
    
    CGFloat viewWidth        = CGRectGetWidth(self.view.frame);
    CGFloat txtWidth         = viewWidth - 30 * 2;
    self.textField.frame     = CGRectMake(30, 60, txtWidth, 40);
    
    CGFloat btnX             = 30;
    CGFloat btnY             = CGRectGetMaxY(self.textField.frame) + 24;
    CGFloat btnWidth         = CGRectGetWidth(self.textField.frame);
    CGFloat btnHeight        = 40;
    self.loginButton.frame   = CGRectMake(btnX, btnY, btnWidth, btnHeight);

    self.viewModel = [[SLTViewModel alloc] init];
    
    [[self.loginButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        [self.viewModel login];
    }];
    
    [RACObserve(self.viewModel, loginStatus) subscribeNext:^(id x) {
       
        if (self.viewModel.loginStatus) {
            [self showSuccessPage];
        } else {
            [self showErrorAlert];
        }
        
    }];
    
    [RACObserve(self.textField, text) subscribeNext:^(id x) {
        self.viewModel.userModel.name = self.textField.text;
    }];
    
}


#pragma mark - delegate

- (void)showSuccessPage {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Success" message:@"Login Success" preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"cancel");
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)showErrorAlert {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Error" message:@"Input error" preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"cancel");
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
}


#pragma mark - view

- (UITextField *)textField {
    
    if (!_textField) {
        _textField = [[UITextField alloc] init];
        _textField.placeholder = @"Please input your username";
        _textField.textAlignment = NSTextAlignmentCenter;
        _textField.layer.borderColor = [UIColor lightGrayColor].CGColor;
        _textField.layer.borderWidth = 1;
        _textField.layer.cornerRadius = 3;
        _textField.layer.masksToBounds = YES;
    }
    return _textField;
}

- (UIButton *)loginButton {
    
    if (!_loginButton) {
        _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [_loginButton setBackgroundColor:[UIColor lightGrayColor]];
        _loginButton.layer.cornerRadius = 3;
        _loginButton.layer.masksToBounds = YES;
    }
    return _loginButton;
}


@end
