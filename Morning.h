//
//  Morning.h
//  B12APP
//
//  Created by Dustrise on 5/16/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "Nameofexercise.h"



@interface Morning : UIViewController<UITabBarDelegate,UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UINavigationBar *bar1;
    IBOutlet UITabBar *tab1;
    IBOutlet UITableView *tv1;
    IBOutlet UITabBarItem *item1,*item2,*item3,*item4;
    IBOutlet UIBarButtonItem *bk1;
    NSArray *array1,*array2;
  
    
}
-(IBAction)back1;
@end
