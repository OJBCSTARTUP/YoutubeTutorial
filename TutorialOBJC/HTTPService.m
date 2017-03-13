//
//  HTTPService.m
//  TutorialOBJC
//
//  Created by Nem Sothea on 3/13/17.
//  Copyright © 2017 Nem Sothea. All rights reserved.
//

#import "HTTPService.h"

@implementation HTTPService
+(id) instance
{
    static HTTPService *sharedInstance = nil;
    @synchronized (self) {
        if(sharedInstance == nil)
            sharedInstance = [[self alloc]init];
    }
    return sharedInstance;
}
-(void) test
{
    NSLog(@"This is test");
}
@end
