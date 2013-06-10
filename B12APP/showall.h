//
//  showall.h
//  B12APP
//
//  Created by Dustrise on 5/30/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddToPlan.h"
#import "notification.h"
#import "ViewController.h"

@interface showall : UIViewController<UITableViewDataSource,UITableViewDelegate,UITabBarDelegate>
{
    
    IBOutlet UINavigationBar *bar1;
    IBOutlet UITabBar *tab1;
    IBOutlet UIBarButtonItem *bk1;
    IBOutlet UITableView *tab;
   
     NSMutableArray *marray;
    NSArray *arraypath;
    NSString *strdestpath,*strsourcepath;
   
}
-(void)show:(id)sender;
-(IBAction)clickback;



@end
