//
//  standingex.h
//  B12APP
//
//  Created by Dustrise on 5/20/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "notification.h"

@interface standingex : UIViewController
{
    IBOutlet UIImageView *imageview;
    IBOutlet UINavigationBar *navigation;
    IBOutlet UITabBar *tab;
    IBOutlet UIBarButtonItem *back;
    IBOutlet UIButton *btn;
    
    NSMutableArray *arrayImages,*array2;
    UISwipeGestureRecognizer *leftswipe,*rightswipe;
    
    int count;
    float *lastScaleFactor;
    float factor;
    NSString *getstr1,*str2;

}
-(IBAction)back3;
-(IBAction)addtostand;
-(void)getstr1:(id)sender1;

@end
