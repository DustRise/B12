//
//  AddToPlan.m
//  B12APP
//
//  Created by Dustrise on 5/21/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import "AddToPlan.h"
#import "AppDelegate.h"
#import "Morning.h"
#import <sqlite3.h>

@interface AddToPlan ()

@end

@implementation AddToPlan

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIColor *color=[UIColor colorWithRed:139.0f/255.0f green:69.0f/255.0f blue:19.0f/255.0f alpha:1];
    bar1.tintColor=color;
    tab1.tintColor=color;
    self.view.backgroundColor=[UIColor colorWithRed:205.0f/255.0f green:133.0f/255.0f blue:63.0f/255.0f alpha:1];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
-(IBAction)clickback;
{
    [self dismissModalViewControllerAnimated:YES];
}
-(void)getlbl:(id)sender4;
{
    NSLog(@"the exercise is %@",sender4);
    exlbl.text=sender4;
}
-(IBAction)clickmrng;
{
    UILocalNotification *notification=[[UILocalNotification alloc]init];
    NSDate *mylbl=picker.date;
    NSDateFormatter *formetter=[[NSDateFormatter alloc]init];
    [formetter setDateFormat:@"hh:mm"];
    NSString *str=[[NSString alloc]initWithFormat:@"%@",[formetter stringFromDate:mylbl]];
    mrnglbl.text=str;
    [notification setAlertBody:@"Good Moring"];
    [notification setAlertAction:@"goto App"];
    [notification setSoundName:@"NUvvila.mp3"];
    [[UIApplication sharedApplication]scheduleLocalNotification:notification];

    strsourcepath=[[NSBundle mainBundle]pathForResource:@"mydatabase.sqlite" ofType:nil];
    NSLog(@"str source %@",strsourcepath);
    
    arraypath=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    strdestpath=[[NSString alloc]initWithFormat:@"%@/mydatabase.sqlite",[arraypath objectAtIndex:0]];
    
    NSFileManager *manager=[[NSFileManager alloc]init];
    
    if([manager fileExistsAtPath:strdestpath]==YES)
    {
        NSLog(@"File Existed");
        
    }
    else
    {
        NSError *err;
        [manager copyItemAtPath:strsourcepath toPath:strdestpath error:&err];
         NSLog(@"File all ready Existed");
    }
    NSString *strng=@"1001";
     sqlite3 *database;
    if (sqlite3_open([strdestpath UTF8String],&database)==SQLITE_OK)
    {
        NSString *insert=[[NSString alloc]initWithFormat:@"insert into mydb(groupid,groupname,exercisename)values('%@','%@','%@')",strng,lbl1.text,exlbl.text];
        void *v;
        char *err;
        if(sqlite3_exec(database, [insert UTF8String], 0, &v, &err)==SQLITE_OK)
        {
            NSLog(@"inserted ");
        }
    }
}
-(IBAction)showclick;
{
    sqlite3 *database;
    if (sqlite3_open([strdestpath UTF8String],&database)==SQLITE_OK)
    {
        NSString *selectquery=@"select *from mydb";
        sqlite3_stmt *smt;
        if (sqlite3_prepare_v2(database, [selectquery UTF8String],-1,&smt,nil)==SQLITE_OK)
        {
            while (sqlite3_step(smt)==SQLITE_ROW)
            {
                NSString *plan=[NSString stringWithUTF8String:(char *)sqlite3_column_text(smt, 0)];
                NSString *exe=[NSString stringWithUTF8String:(char *)sqlite3_column_text(smt, 1)];
                NSString *time=[NSString stringWithUTF8String:(char *)sqlite3_column_text(smt, 2)];
                NSLog(@"plan is %@",plan);
                NSLog(@"exe is %@",exe);
                NSLog(@"time is %@",time);
            }
        }
   }

       
    
}

-(IBAction)clickafn;
{
    
    UILocalNotification *notification=[[UILocalNotification alloc]init];
    NSDate *mylbl2=picker.date;
    NSDateFormatter *formetter=[[NSDateFormatter alloc]init];
    [formetter setDateFormat:@"hh:mm"];

    NSString *str=[[NSString alloc]initWithFormat:@"%@",[formetter stringFromDate:mylbl2]];
   

    [notification setFireDate:picker.date];
    [notification setAlertBody:@"Good Moring"];
    [notification setAlertAction:@"goto App"];
    afnlbl.text=str;
    [[UIApplication sharedApplication]scheduleLocalNotification:notification];
    strsourcepath=[[NSBundle mainBundle]pathForResource:@"mydatabase.sqlitee" ofType:nil];
    NSLog(@"str source %@",strsourcepath);
    
    arraypath=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    strdestpath=[[NSString alloc]initWithFormat:@"%@/mydatabase.sqlite",[arraypath objectAtIndex:0]];
    
    NSFileManager *manager=[[NSFileManager alloc]init];
    
    if([manager fileExistsAtPath:strdestpath]==YES)
    {
        NSLog(@"File Existed");
        
    }
    else
    {
        NSError *err;
        [manager copyItemAtPath:strsourcepath toPath:strdestpath error:&err];
        NSLog(@"File all ready Existed");
    }
     NSString *strng=@"1002";
    sqlite3 *database;
    if (sqlite3_open([strdestpath UTF8String],&database)==SQLITE_OK)
    {
        NSString *insert=[[NSString alloc]initWithFormat:@"insert into mydb(groupid,groupname,exercisename)values('%@','%@','%@')",strng,lbl2.text,exlbl.text];
        void *v;
        char *err;
        if(sqlite3_exec(database, [insert UTF8String], 0, &v, &err)==SQLITE_OK)
        {
            NSLog(@"inserted ");
        }
    }
    


}


-(IBAction)clickevng;


{
    
   UILocalNotification *notification=[[UILocalNotification alloc]init];
    NSDate *mylbl3=picker.date;
    NSDateFormatter *formetter=[[NSDateFormatter alloc]init];
    [formetter setDateFormat:@"hh:mm"];
    NSString *str=[[NSString alloc]initWithFormat:@"%@",[formetter stringFromDate:mylbl3]];
    evnglbl.text=str;
    [notification setAlertBody:@"Good Moring"];
    [notification setAlertAction:@"goto App"];
    [[UIApplication sharedApplication]scheduleLocalNotification:notification];
    strsourcepath=[[NSBundle mainBundle]pathForResource:@"mydatabase.sqlitete" ofType:nil];
    NSLog(@"str source %@",strsourcepath);
    
    arraypath=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    strdestpath=[[NSString alloc]initWithFormat:@"%@/mydatabase.sqlite",[arraypath objectAtIndex:0]];
    
    NSFileManager *manager=[[NSFileManager alloc]init];
    
    if([manager fileExistsAtPath:strdestpath]==YES)
    {
        NSLog(@"File Existed");
        
    }
    else
    {
        NSError *err;
        [manager copyItemAtPath:strsourcepath toPath:strdestpath error:&err];
        NSLog(@"File all ready Existed");
    }
     NSString *strng=@"1003";
    sqlite3 *database;
    if (sqlite3_open([strdestpath UTF8String],&database)==SQLITE_OK)
    {
        NSString *insert=[[NSString alloc]initWithFormat:@"insert into mydb(groupid,groupname,exercisename)values('%@','%@','%@')",strng,lbl3.text,exlbl.text];
        void *v;
        char *err;
        if(sqlite3_exec(database, [insert UTF8String], 0, &v, &err)==SQLITE_OK)
        {
            NSLog(@"inserted ");
        }

    }
    
}

-(IBAction)clickshow1;
{
    NSString *string=@"group1";
    showall *all=[[showall alloc]init];
    all=[self.storyboard instantiateViewControllerWithIdentifier:@"showall"];
    [self presentModalViewController:all animated:YES];
    [all show:string];
   
}


-(IBAction)clickshow2;
{
    NSString *string=@"group2";
    showall *all=[[showall alloc]init];
    all=[self.storyboard instantiateViewControllerWithIdentifier:@"showall"];
    [self presentModalViewController:all animated:YES];
[all show:string];

}


-(IBAction)clickshow3;
{
    NSString *string=@"group3";
    showall *all=[[showall alloc]init];
    all=[self.storyboard instantiateViewControllerWithIdentifier:@"showall"];
    [self presentModalViewController:all animated:YES];
    [all show:string];
}
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item;
{
if(item.tag==0)
{
    ViewController *view=[[ViewController alloc]init];
    view=[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self presentViewController:view animated:YES completion:nil];
    
}
if(item.tag==1)
{
    notification *note=[[notification alloc]init];
    note=[self.storyboard instantiateViewControllerWithIdentifier:@"notification"];
    [self presentViewController:note animated:YES completion:nil];
}

}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation

{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
