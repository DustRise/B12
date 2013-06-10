//
//  layingex.h
//  B12APP
//
//  Created by Dustrise on 5/20/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "notification.h"

@interface layingex : UIViewController
{
    IBOutlet UIImageView *imageview;
    IBOutlet UINavigationBar *navigation;
    IBOutlet UITabBar *tab;
    IBOutlet UIBarButtonItem *back3;
    IBOutlet UIButton *btn;
    
    NSMutableArray *arrayImages;
    UISwipeGestureRecognizer *leftswipe,*rightswipe;
    
    int count;
    float *lastScaleFactor;
    float factor;
    NSString *getstr2,*str2;

}
-(IBAction)back3click;
-(IBAction)laybtn;
-(void)getstr2:(id)sender2;

@end
