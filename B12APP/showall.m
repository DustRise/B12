//
//  showall.m
//  B12APP
//
//  Created by Dustrise on 5/30/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import "showall.h"
#import <sqlite3.h>
#import "Standing.h"
#import "laying.h"

@interface showall ()

@end

@implementation showall

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
    marray=[[NSMutableArray alloc]init];
    UIColor *color=[UIColor colorWithRed:139.0f/255.0f green:69.0f/255.0f blue:19.0f/255.0f alpha:1];
    bar1.tintColor=color;
    tab1.tintColor=color;
    self.view.backgroundColor=[UIColor colorWithRed:205.0f/255.0f green:133.0f/255.0f blue:63.0f/255.0f alpha:1];
    

   

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

{
    return  [marray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

{
    UITableViewCell *cell=[[UITableViewCell alloc]init];
    cell.textLabel.text=[marray objectAtIndex:indexPath.row];
    cell.backgroundColor=[UIColor colorWithRed:244.0f/255.0f green:164.0f/255.0f blue:96.0f/255.0f alpha:1];
    cell.accessoryType=UITableViewCellAccessoryDetailDisclosureButton;
    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
//   NSString str=[marray objectAtIndex:indexPath.row];
//
//   // str=[array objectAtIndex:indexPath.row];
//    NSLog(@"the str is %@",str);
//    if([str isEqualToString:@"Sitting"])
//    {
//        Morning *mrng=[[Morning alloc]init];
//        mrng=[self.storyboard instantiateViewControllerWithIdentifier:@"Morning"];
//        [self presentViewController:mrng animated:YES completion:nil];
//    }
//    else if ([str isEqualToString:@"Standing"])
//    {
//        Standing *stand=[[Standing alloc]init];
//        stand=[self.storyboard instantiateViewControllerWithIdentifier:@"Standing"];
//        [self presentViewController:stand animated:YES completion:nil];
//    }
//    else if ([str isEqualToString:@"LayingDown"])
//    {
//        laying  *lay=[[laying alloc]init];
//        lay=[self.storyboard instantiateViewControllerWithIdentifier:@"laying"];
//        [self presentViewController:lay animated:YES completion:nil];
//    }
    


}

-(void)show:(id)sender;
{
    bar1.topItem.title =sender;

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
                NSString *exercisename=[NSString stringWithUTF8String:(char *)sqlite3_column_text(smt, 2)];
                NSLog(@"plan is %@",plan);
                NSLog(@"exe is %@",exe);
                NSLog(@"time is %@",exercisename);
                [marray addObject:exercisename];
            }
        }
    }
    


}
}
-(IBAction)clickback;
    {
        [self dismissModalViewControllerAnimated:YES];
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
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
