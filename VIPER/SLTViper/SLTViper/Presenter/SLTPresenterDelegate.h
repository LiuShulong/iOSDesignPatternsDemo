//
//  SLTPresenterDelegate.h
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SLTPresenterDelegate <NSObject>

- (void)loginWithName:(NSString *)name;

- (void)refreshAction;

@end
