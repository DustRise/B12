//
//  notification.m
//  B12APP
//
//  Created by Dustrise on 5/30/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import "notification.h"
#import "repeatDays.h"
#import "insist.h"
#import "Settings.h"

@interface notification ()

@end

@implementation notification
@synthesize dayStr;

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
    
    rojulu=[[NSMutableArray alloc]initWithObjects:@"Sunday",@"Monday",@"Tuesday",@"Wednesday",@"Thursday",@"Friday",@"Saturday", nil];
    
    NSString *viewStr=[[NSString alloc]initWithFormat:@"%@", rojulu];
    
    NSDate *CurrentDate=[NSDate date];
    
    NSString *local=[[NSString alloc]initWithFormat:@"%@", CurrentDate];
    //NSLog(@"date is :%@", CurrentDate);
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE hh:mm a"];
    NSDate *date  = [dateFormatter dateFromString:local];
    NSLog(@"%@",date);
    
    lbl_result.text=viewStr;
}

-(IBAction)repeatings;
{
    
    repeatDays *all=[[repeatDays alloc]init];
    
    all=[self.storyboard instantiateViewControllerWithIdentifier:@"repeatDays"];
    
    [self presentModalViewController:all animated:YES];
    
   // NSMutableArray *ma=[[NSMutableArray alloc]initWithObjects:@"%@",lbl_result.text, nil];
    
    [all dayStrs: dayStr];
    
    
}

//-(void)show:(id)sender1;
//{
//    
//    senderStr=sender1;
//    //lbl_result.text=senderStr;
//    [self display:senderStr];
//}

-(void)display:(id)sender :(id)sender1;
{
    
    NSLog(@"Result is :%@", sender);
           
    tags=sender1;

    NSLog(@"Sender1 is :%@", tags);
    
    NSMutableArray *xxx=sender;
    
    dayStr=[[NSString alloc]initWithFormat:@"%@",xxx];
    
    NSLog(@"Fresh :%@", dayStr);
    
    lbl_result.text=dayStr;
    
       
}

-(IBAction)set1click;
{
    
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
   
    NSDate *pickerDate = [datepicker date];
    NSDateFormatter *formatter=[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"HH:mm a"];
    
    NSDateComponents *dateComponents = [calendar components:( NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit )
												   fromDate:pickerDate];
    NSDateComponents *timeComponents = [calendar components:( NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit )
												   fromDate:pickerDate];
    
    NSDateComponents *dateComps = [[NSDateComponents alloc] init];
    [dateComps setDay:[dateComponents day]];
    [dateComps setMonth:[dateComponents month]];
    [dateComps setYear:[dateComponents year]];
    [dateComps setHour:[timeComponents hour]];
    
    [dateComps setMinute:[timeComponents minute]];
	[dateComps setSecond:[timeComponents second]];
    NSDate *itemDate = [calendar dateFromComponents:dateComps];
    
    UILocalNotification *localNotif = [[UILocalNotification alloc] init];
    if (localNotif == nil)
        return;
    localNotif.fireDate = itemDate;
    localNotif.timeZone = [NSTimeZone defaultTimeZone];
    localNotif.alertLaunchImage=@"A.MP3.aiff";
    localNotif.alertBody = @"Exercises";
    localNotif.alertAction = @"View";
    localNotif.soundName=@"Arya_bgm.mp3";
    localNotif.soundName = UILocalNotificationDefaultSoundName;
    localNotif.applicationIconBadgeNumber = 1;
    NSDictionary *infoDict = [NSDictionary dictionaryWithObject:@"someValue" forKey:@"someKey"];
    localNotif.userInfo = infoDict;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotif];
    NSString *string=@"group1";
    showall *all=[[showall alloc]init];
    all=[self.storyboard instantiateViewControllerWithIdentifier:@"showall"];
    [self presentModalViewController:all animated:YES];
    [all show:string];
    
}
-(IBAction)set2click;
{
   // NSDate *mydate=[NSDate date];
//NSDateFormatter *formetter=[[NSDateFormatter alloc]init];
   // [formetter setDateFormat:@"hh:mm dd:mm:yy"];
   // NSString *str=[formetter stringFromDate:mydate];
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    NSDate *pickerDate = [datepicker date];
    NSDateFormatter *formatter=[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"HH:mm:ss yyyy:MM:dd"];
    
    NSDateComponents *dateComponents = [calendar components:( NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit )
												   fromDate:pickerDate];
    NSDateComponents *timeComponents = [calendar components:( NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit )
												   fromDate:pickerDate];
    
    NSDateComponents *dateComps = [[NSDateComponents alloc] init];
    [dateComps setDay:[dateComponents day]];
    [dateComps setMonth:[dateComponents month]];
    [dateComps setYear:[dateComponents year]];
    [dateComps setHour:[timeComponents hour]];
    
    [dateComps setMinute:[timeComponents minute]];
	[dateComps setSecond:[timeComponents second]];
    NSDate *itemDate = [calendar dateFromComponents:dateComps];
    
    UILocalNotification *localNotif = [[UILocalNotification alloc] init];
    if (localNotif == nil)
        return;
    localNotif.fireDate = itemDate;
    localNotif.timeZone = [NSTimeZone defaultTimeZone];
    localNotif.alertLaunchImage=@"alarm.jpeg";
    localNotif.alertBody = @"Group2";
    localNotif.alertAction = @"View";
    localNotif.soundName=@"Arya_bgm.mp3";
   // localNotif.soundName = UILocalNotificationDefaultSoundName;
    localNotif.applicationIconBadgeNumber = 1;
    NSDictionary *infoDict = [NSDictionary dictionaryWithObject:@"someValue" forKey:@"someKey"];
    localNotif.userInfo = infoDict;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotif];
    


}
-(IBAction)set3click;
{
   // NSDate *mydate=[NSDate date];
    //NSDateFormatter *formetter=[[NSDateFormatter alloc]init];
    //[formetter setDateFormat:@"hh:mm dd:mm:yy"];
   // NSString *str=[formetter stringFromDate:mydate];
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    NSDate *pickerDate = [datepicker date];
    NSDateFormatter *formatter=[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"HH:mm:ss yyyy:MM:dd"];
    
    NSDateComponents *dateComponents = [calendar components:( NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit )
												   fromDate:pickerDate];
    NSDateComponents *timeComponents = [calendar components:( NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit )
												   fromDate:pickerDate];
    
    NSDateComponents *dateComps = [[NSDateComponents alloc] init];
    [dateComps setDay:[dateComponents day]];
    [dateComps setMonth:[dateComponents month]];
    [dateComps setYear:[dateComponents year]];
    [dateComps setHour:[timeComponents hour]];
    
    [dateComps setMinute:[timeComponents minute]];
	[dateComps setSecond:[timeComponents second]];
    NSDate *itemDate = [calendar dateFromComponents:dateComps];
    
    UILocalNotification *localNotif = [[UILocalNotification alloc] init];
    if (localNotif == nil)
        return;
    localNotif.fireDate = itemDate;
    localNotif.timeZone = [NSTimeZone defaultTimeZone];
    localNotif.alertLaunchImage=@"alarm.jpeg";
    localNotif.alertBody = @"Group3";
    localNotif.alertAction = @"View";
    //localNotif.soundName=@"Arya_bgm.mp3";
    localNotif.soundName = UILocalNotificationDefaultSoundName;
    localNotif.applicationIconBadgeNumber = 1;
    NSDictionary *infoDict = [NSDictionary dictionaryWithObject:@"someValue" forKey:@"someKey"];
    localNotif.userInfo = infoDict;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotif];
    
    

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
