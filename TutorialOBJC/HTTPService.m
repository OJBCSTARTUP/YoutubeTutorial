//
//  HTTPService.m
//  TutorialOBJC
//
//  Created by Nem Sothea on 3/13/17.
//  Copyright © 2017 Nem Sothea. All rights reserved.
//

#import "HTTPService.h"
#define URL_BASE "http://localhost:6069"
#define URL_TUTORIAL "/tutorials"

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
//
-(void) getTutorials:(nullable onComplete)completionHandler
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s",URL_BASE,URL_TUTORIAL]];
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (data !=nil)
        {
            NSError *err;
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];
            if(err == nil)
            {
                completionHandler(json,nil);
                
            }else{
                completionHandler(nil, @"Data currupt! Plz try again.");
            }
        }else{
            NSLog(@"Network Err: %@",error.debugDescription);
            completionHandler(nil, @"Problem connecting to the server.");
        }
        
    }] resume];
}
@end
