//
//  repeatDays.m
//  B12APP
//
//  Created by Dustrise on 6/7/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import "repeatDays.h"
#import "Settings.h"
#import "insist.h"
#import "notification.h"

@interface repeatDays ()

@end

@implementation repeatDays
@synthesize days;
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
    
    arrRemovedays=[[NSMutableArray alloc]init];
    insist (self);
    settings = [Settings sharedSettings];
    insist (settings);
    self.navigationItem.title = @"Repeat";
          
    self->tables.allowsMultipleSelection=YES;
    
    RepeatDayStr=[[NSMutableArray alloc]init];
    NSDateFormatter*dateFormatter = [[NSDateFormatter alloc]init];
    insist (dateFormatter);
    days = (NSMutableArray*)[dateFormatter weekdaySymbols];
    insist (days);
    
    MuteArr=[NSMutableArray arrayWithArray:days];
    
    //notification *notes=[[notification alloc]init];
         
//    [arrRemovedays addObject:notes.dayStr];
//    
//    NSLog(@"RepeatDays ViewDidLoad:%@",arrRemovedays);
//    
//    [MuteArr removeObject:RepeatDayStr];
//    
//    NSLog(@"arrRemovedays ViewDidLoad:%@",MuteArr);
       
    tag=@"0";
        
}

-(IBAction)backing;
{
    
    //[self dismissModalViewControllerAnimated:YES];
    
    notification *note=[[notification alloc]init];
    
    note=[self.storyboard instantiateViewControllerWithIdentifier:@"notification"];
    
    [self presentModalViewController:note animated:YES];
    
    NSString *localStr=[[NSString alloc]initWithFormat:@"%@", RepeatDayStr];
    
    NSLog(@"RRRRRRR :%@", localStr);
    
     tag=@"1";
        
   [note display:localStr :tag];
    
   
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    insist (settings);
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return days.count; //days in a week
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    int row = [indexPath row];
    
    insist (settings);
    int dayMask = settings.dayMask;
    
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.showsReorderControl = NO;
    }
         
    cell.textLabel.text = [days objectAtIndex:row];
    cell.accessoryType = dayMask & (1 << row) ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;
        
    NSLog(@"Days are 2:%@", MuteArr);
    
    return cell;

}

-(void)dayStrs:(id)sender;
{
        
    RepeatDayStr=sender;
    
    NSLog(@"RepeatDays are :%@", RepeatDayStr);
      
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*flip the bit in the mask for this row*/
    
    insist(settings);
    
    int row = [indexPath row];
    
    int dayMask = settings.dayMask;
    
    int bit = 1 << row;
    
    if (dayMask & bit)
    
    {
        bit = ~bit;
        dayMask &= bit;
    }
    
    else
        
    dayMask |= bit;
    
    cell.accessoryType = dayMask & (1 << row) ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;

    /*save the new value and redraw the tableview*/
    
    settings.dayMask = dayMask;
    
    NSLog(@"Days are1 :%d", settings.dayMask);
                  
    //NSLog(@"MuteArray is :%@", MuteArr);
    
    NSLog(@"did selected row %@",RepeatDayStr);

    
    NSLog(@"MuteArray is :%u", indexPath.row);
          
    NSString *xyzStr=[RepeatDayStr objectAtIndex:indexPath.row];
    
    [RepeatDayStr removeObject:xyzStr];
       
    
    NSLog(@"did selected row %@",MuteArr);
     NSLog(@"did selected row %@",RepeatDayStr);
        
    notification *note=[[notification alloc]init];
           
    [note display:RepeatDayStr :tag];

    [tableView reloadData];
 
        
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
    NSLog(@"Days are3 :%@", days);
    
    NSString * Arrstr=[days objectAtIndex:indexPath.row];
    
    [MuteArr removeObject:Arrstr];
    
    NSLog(@"DEselect :%@", MuteArr);
    
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
