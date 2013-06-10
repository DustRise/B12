//
//  Standing.h
//  B12APP
//
//  Created by Dustrise on 5/20/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "notification.h"

@interface Standing : UIViewController<UITableViewDataSource,UITableViewDelegate,UITabBarDelegate>
{
    IBOutlet UINavigationBar *nav;
    IBOutlet UITabBar *tab;
    IBOutlet UIBarButtonItem *barbtn;
    IBOutlet UITableView *tbl;
     NSArray *array1,*array2;
   
    

}
-(IBAction)back2;

@end
