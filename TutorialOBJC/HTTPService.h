//
//  HTTPService.h
//  TutorialOBJC
//
//  Created by Nem Sothea on 3/13/17.
//  Copyright © 2017 Nem Sothea. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^onComplete)(NSArray * __nullable dataDict,NSString * __nullable errMessage);

@interface HTTPService : NSObject
//static shareInstance
+(id) instance;
-(void) test;
-(void)getTutorials:(nullable onComplete)completionHandler;
@end
