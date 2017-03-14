//
//  VideoCell.h
//  TutorialOBJC
//
//  Created by Nem Sothea on 3/14/17.
//  Copyright © 2017 Nem Sothea. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;
@interface VideoCell : UITableViewCell
-(void)updateUI:(nullable Video*)video;
@end
