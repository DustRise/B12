//
//  AddToPlan.h
//  B12APP
//
//  Created by Dustrise on 5/21/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "showall.h"
#import "notification.h"


@interface AddToPlan : UIViewController<AVAudioPlayerDelegate,UITabBarDelegate>
{
    IBOutlet UINavigationBar *bar1;
    IBOutlet UITabBar *tab1;
    IBOutlet UIBarButtonItem *bk1,*show;
    IBOutlet UILabel *lbl1,*lbl2,*lbl3,*mrnglbl,*afnlbl,*evnglbl,*exlbl;
    IBOutlet UIButton *mrng,*afn,*evng,*show1,*show2,*show3;
    IBOutlet UIDatePicker *picker;
    AVAudioPlayer *audio;
    NSString *strsourcepath,*strdestpath,*str2;
    NSArray *arraypath;
     
}
-(IBAction)clickback;
-(IBAction)clickmrng;
-(IBAction)clickafn;
-(IBAction)clickevng;
-(IBAction)clickshow1;
-(IBAction)clickshow2;
-(IBAction)clickshow3;
-(void)getlbl:(id)sender4;
-(IBAction)showclick;


@end
