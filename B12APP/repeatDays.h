//
//  repeatDays.h
//  B12APP
//
//  Created by Dustrise on 6/7/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Settings.h"
#import "repeatDays.h"
#import "notification.h"

@interface repeatDays : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    
    IBOutlet UITableView *tables;
    Settings*settings;
    IBOutlet UINavigationItem *items;
    UITableViewCell *cell;
    NSMutableArray *days,*MuteArr,*arrRemovedays,*RepeatDayStr;
    NSDictionary *dics;
    bool mark;
    NSString *tag;
    
}
@property(nonatomic,retain)NSMutableArray *days;
-(IBAction)backing;
-(void)dayStrs:(id)sender;
@end
