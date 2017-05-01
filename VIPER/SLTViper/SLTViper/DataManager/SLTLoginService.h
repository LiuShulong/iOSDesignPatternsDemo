//
//  SLTLoginService.h
//  SLTViper
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLTLoginService : NSObject

+ (void)requestLoginAPIWithName:(NSString *)name complete:(void(^)(BOOL isSuccess))complete;

@end
