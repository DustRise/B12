//
//  ViewController.h
//  B12APP
//
//  Created by Dustrise on 5/13/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UITabBarDelegate>
{
    IBOutlet UINavigationBar *bar;
    IBOutlet UITabBar *tab1;
    IBOutlet UITableView *tv;
    IBOutlet UITabBarItem *item1,*item2,*item3,*item4;
    NSArray *array;
    NSString *str;
    
}


@end
