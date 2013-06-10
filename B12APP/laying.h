//
//  laying.h
//  B12APP
//
//  Created by Dustrise on 5/20/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "notification.h"
#import "ViewController.h"

@interface laying : UIViewController<UITabBarDelegate,UITableViewDelegate,UITableViewDataSource>
{
    
    IBOutlet UINavigationBar *bar1;
    IBOutlet UITabBar *tab1;
    IBOutlet UITableView *tv1;
    IBOutlet UIBarButtonItem *bk1;
    NSArray *array1,*array2;
    

}
-(IBAction)clickbk1;
@end
