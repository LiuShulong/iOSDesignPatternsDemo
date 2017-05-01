//
//  SLTLog.h
//  SLTAspect
//
//  Created by LiuShulong on 01/05/2017.
//  Copyright © 2017 LiuShulong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLTLog : NSObject

+ (void)start;

+ (void)log:(NSString *)event;

@end
