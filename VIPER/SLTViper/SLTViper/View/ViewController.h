//
//  ViewController.h
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SLTPresenterDelegate.h"
#import "SLTViewDelegate.h"

@interface ViewController : UIViewController<SLTViewDelegate>

@property (nonatomic,strong) id<SLTPresenterDelegate> eventHandler;

@end

