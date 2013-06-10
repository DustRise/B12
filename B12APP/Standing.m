//
//  Standing.m
//  B12APP
//
//  Created by Dustrise on 5/20/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import "Standing.h"
#import "ViewController.h"
#import "Nameofexercise.h"
#import "standingex.h"

@interface Standing ()

@end

@implementation Standing

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
    nav.tintColor=color;
    tab.tintColor=color;
    self.view.backgroundColor=[UIColor colorWithRed:205.0f/255.0f green:133.0f/255.0f blue:63.0f/255.0f alpha:1];
    
    
    array1=[[NSArray alloc]initWithObjects:@"wall",@"jump",@"run", nil];
    array2=[[NSArray alloc]initWithObjects:[UIImage imageNamed:@"stand1.gif"],[UIImage imageNamed:@"stand2.gif"],[UIImage imageNamed:@"stand3.gif"],nil];
    

    

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

{
    return [array1 count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell *cell=[[UITableViewCell alloc]init];
    cell.textLabel.text=[array1 objectAtIndex:indexPath.row];
    cell.imageView.image=[array2 objectAtIndex:indexPath.row];
    cell.backgroundColor=[UIColor colorWithRed:244.0f/255.0f green:164.0f/255.0f blue:96.0f/255.0f alpha:1];
    cell.accessoryType=UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
    

}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSString *str=[array1 objectAtIndex:indexPath.row];
    standingex *standex=[[standingex alloc]init];
    standex=[self.storyboard instantiateViewControllerWithIdentifier:@"standingex"];
    [self presentViewController:standex animated:YES completion:nil];
    [standex getstr1:str];
    


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

-(IBAction)back2;

{
[self dismissModalViewControllerAnimated:YES];
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
