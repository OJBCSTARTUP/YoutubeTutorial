//
//  ViewController.m
//  TutorialOBJC
//
//  Created by Nem Sothea on 3/13/17.
//  Copyright © 2017 Nem Sothea. All rights reserved.
//

#import "ViewController.h"
#import "HTTPService.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
//    [[HTTPService alloc]test];
   // [[HTTPService alloc]getTutorials];
    [[HTTPService instance] getTutorials:^(NSDictionary * _Nullable dataDict, NSError * _Nullable errMessage) {
        if (dataDict) {
            NSLog(@"Dictionary : %@",dataDict.debugDescription);
            
        }else if (errMessage){
            NSLog(@"Alert : %@", errMessage.debugDescription);
        }
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
