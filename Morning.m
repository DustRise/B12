//
//  Morning.m
//  B12APP
//
//  Created by Dustrise on 5/16/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import "Morning.h"




@interface Morning ()

@end

@implementation Morning

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(IBAction)back1;
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIColor *color=[UIColor colorWithRed:139.0f/255.0f green:69.0f/255.0f blue:19.0f/255.0f alpha:1];
    bar1.tintColor=color;
    tab1.tintColor=color;
    self.view.backgroundColor=[UIColor colorWithRed:205.0f/255.0f green:133.0f/255.0f blue:63.0f/255.0f alpha:1];
    
    array1=[[NSArray alloc]initWithObjects:@"Office",@"Chair",@"neck",@"yoga",@"ankle",nil];
    array2=[[NSArray alloc]initWithObjects:[UIImage imageNamed:@"office14.gif"],[UIImage imageNamed:@"chair2.jpg"],[UIImage imageNamed:@"neckextension.jpg"],[UIImage imageNamed:@"yoga-sleep-balasana.jpg"],[UIImage imageNamed:@"dorseflexion.jpg"],nil];

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
    NSLog(@"exe name is %@",str);
  Nameofexercise *ex=[[Nameofexercise alloc]init];
    ex=[self.storyboard instantiateViewControllerWithIdentifier:@"Nameofexercise"];
    [self presentViewController:ex animated:YES completion:nil];
    [ex getstr:str];
    
     
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    }
    else
    {
    return YES;
    }
    
}
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item;
{
    if(item.tag==0)
    {
        ViewController *view=[[ViewController alloc]init];
        view=[self.storyboard instantiateInitialViewController];
        [self presentViewController:view animated:YES completion:nil];
        
        }
    if(item.tag==1)
    {
        notification *note=[[notification alloc]init];
        note=[self.storyboard instantiateViewControllerWithIdentifier:@"notification"];
        [self presentViewController:note animated:YES completion:nil];
    }

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
