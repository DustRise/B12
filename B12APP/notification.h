//
//  notification.h
//  B12APP
//
//  Created by Dustrise on 5/30/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "showall.h"
#import "Settings.h"
#import "repeatDays.h"

@interface notification : UIViewController<UITabBarDelegate>
{
    
    IBOutlet UINavigationBar *bar1;
    IBOutlet UITabBar *tab1;
    IBOutlet UIBarButtonItem *bk1;
    IBOutlet UIDatePicker *datepicker;
    IBOutlet UILabel *g1,*g2,*g3;
    IBOutlet UIButton *set1,*set2,*set3,*repeat;
    IBOutlet UILabel *lbl1, *lbl2, *lbl3, *lbl_result;
    NSMutableArray * senderStr;
    Settings *settings;
    NSArray *days;
    NSMutableArray *rojulu;
   
    NSString *tags;
    
    
}
-(IBAction)set1click;
-(IBAction)set2click;
-(IBAction)set3click;
-(IBAction)clickback;
-(IBAction)repeatings;
//-(void)show:(id)sender1;
-(void)display:(id)sender :(id)sender1;
@property(nonatomic, retain)NSString *dayStr;

@end
