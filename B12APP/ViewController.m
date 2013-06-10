//
//  ViewController.m
//  B12APP
//
//  Created by Dustrise on 5/13/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import "ViewController.h"
#import "Morning.h"
#import "Standing.h"
#import "laying.h"
#import "notification.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    UIColor *color=[UIColor colorWithRed:139.0f/255.0f green:69.0f/255.0f blue:19.0f/255.0f alpha:1];
    bar.tintColor=color;
    tab1.tintColor=color;
    self.view.backgroundColor=[UIColor colorWithRed:205.0f/255.0f green:133.0f/255.0f blue:63.0f/255.0f alpha:1];
    
    
    array=[[NSArray alloc]initWithObjects:@"Sitting",@"Standing",@"LayingDown", nil];
    
    
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
- (NSInteger)numberOfSections;
{
    return 3;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return [array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell *cell=[[UITableViewCell alloc]init];
    cell.textLabel.text=[array objectAtIndex:indexPath.row];
    cell.backgroundColor=[UIColor colorWithRed:244.0f/255.0f green:164.0f/255.0f blue:96.0f/255.0f alpha:1];
    cell.accessoryType=UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
    

}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    str=[array objectAtIndex:indexPath.row];
    NSLog(@"the str is %@",str);
    if([str isEqualToString:@"Sitting"])
    {
    Morning *mrng=[[Morning alloc]init];
    mrng=[self.storyboard instantiateViewControllerWithIdentifier:@"Morning"];
    [self presentViewController:mrng animated:YES completion:nil];
    }
    else if ([str isEqualToString:@"Standing"])
    {
        Standing *stand=[[Standing alloc]init];
        stand=[self.storyboard instantiateViewControllerWithIdentifier:@"Standing"];
        [self presentViewController:stand animated:YES completion:nil];
    }
    else if ([str isEqualToString:@"LayingDown"])
    {
        laying  *lay=[[laying alloc]init];
        lay=[self.storyboard instantiateViewControllerWithIdentifier:@"laying"];
        [self presentViewController:lay animated:YES completion:nil];
    }

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else
    {
        return YES;
    } 
    
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
@end
