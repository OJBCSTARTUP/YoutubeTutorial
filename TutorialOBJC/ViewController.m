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
  
    [[HTTPService alloc]test];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
