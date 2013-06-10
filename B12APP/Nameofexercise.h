//
//  Nameofexercise.h
//  B12APP
//
//  Created by SUKKU on 5/18/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "notification.h"


@interface Nameofexercise : UIViewController<UITableViewDelegate,UITableViewDataSource,UITabBarDelegate>
{
    IBOutlet UIImageView *imageview;
    IBOutlet UINavigationBar *navigation;
    IBOutlet UITabBar *tab;
    IBOutlet UIBarButtonItem *back;
    IBOutlet UIButton *btn;
   
    NSMutableArray *arrayImages,*array2,*array3,*array4,*array5;
    UISwipeGestureRecognizer *leftswipe,*rightswipe;
    
    int count;
    float *lastScaleFactor;
    float factor;
    NSString *getstr;
    NSString *exname;
    NSString *str2;
}
-(IBAction)back2;
-(IBAction)Add;
-(void)getstr:(id)sender;

@end
