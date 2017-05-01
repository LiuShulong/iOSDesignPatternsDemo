//
//  ViewController.m
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import "ViewController.h"
#import "SLTLoginWireFrame.h"
#import "SLTSucPageWireFrame.h"
#import "SLTSuccessViewController.h"

@interface ViewController ()

@property (nonatomic,strong) UITextField *textField;
@property (nonatomic,strong) UIButton    *loginButton;
@property (nonatomic,strong) UIButton    *refreshButton;

@end

@implementation ViewController


#pragma mark - life

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configView];
}

#pragma mark - UI

- (void)configView {
    
    [self.view addSubview:self.textField];
    [self.view addSubview:self.loginButton];
    [self.view addSubview:self.refreshButton];
    
    [self configFrame];
}

- (void)configFrame {
    
    CGFloat viewWidth        = CGRectGetWidth(self.view.frame);
    CGFloat txtWidth         = viewWidth - 30 * 2;
    self.textField.frame     = CGRectMake(30, 60, txtWidth, 40);
    
    CGFloat btnX             = 30;
    CGFloat btnY             = CGRectGetMaxY(self.textField.frame) + 24;
    CGFloat btnWidth         = (viewWidth - btnX * 2 - 30)/2.0;
    CGFloat btnHeight        = 40;
    self.loginButton.frame   = CGRectMake(btnX, btnY, btnWidth, btnHeight);
    
    self.refreshButton.frame = CGRectMake(30 + CGRectGetMaxX(self.loginButton.frame), btnY, btnWidth, btnHeight);
    
}

#pragma mark - delegate

- (void)refresh {
    self.textField.text = @"";
}

- (void)showSuccessPage {
    SLTSuccessViewController *svc = [[SLTSuccessViewController alloc] init];
    SLTSucPageWireFrame *wire = [[SLTSucPageWireFrame alloc] init];
    wire.vc = svc;
    [wire showFromVC:self];
}

- (void)showErrorAlert {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Error" message:@"Input error" preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"cancel");
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
}

#pragma mark - control

- (void)loginBtnClick:(UIButton *)btn {
    [self.eventHandler loginWithName:self.textField.text];
}

- (void)refreshBtnClick:(UIButton *)btn {
    [self.eventHandler refreshAction];
}

#pragma mark - get

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
        [_loginButton addTarget:self action:@selector(loginBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [_loginButton setBackgroundColor:[UIColor lightGrayColor]];
        _loginButton.layer.cornerRadius = 3;
        _loginButton.layer.masksToBounds = YES;
    }
    return _loginButton;
}

- (UIButton *)refreshButton {
    
    if (!_refreshButton) {
        _refreshButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_refreshButton addTarget:self action:@selector(refreshBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_refreshButton setTitle:@"Refresh" forState:UIControlStateNormal];
        [_refreshButton setBackgroundColor:[UIColor blackColor]];
        [_refreshButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _refreshButton.layer.cornerRadius = 3;
        _refreshButton.layer.masksToBounds = YES;
    }
    return _refreshButton;
}

@end
