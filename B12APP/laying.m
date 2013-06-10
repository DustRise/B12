//
//  laying.m
//  B12APP
//
//  Created by Dustrise on 5/20/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import "laying.h"
#import "layingex.h"

@interface laying ()

@end

@implementation laying

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
    
    
    array1=[[NSArray alloc]initWithObjects:@"bed1",@"bed2",@"bed3",@"bed4",@"bed5",nil];
    array2=[[NSArray alloc]initWithObjects:[UIImage imageNamed:@"legraises.jpg"],[UIImage imageNamed:@"hipflex.jpg"],[UIImage imageNamed:@"pirlformis.jpg"],[UIImage imageNamed:@"lyingonfloor.jpg"],[UIImage imageNamed:@"harmstring.jpg"],nil];
    

}
-(IBAction)clickbk1;
{
[self dismissModalViewControllerAnimated:YES];
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

{    NSString *str=[array1 objectAtIndex:indexPath.row];
    layingex  *lex=[[layingex alloc]init];
    lex=[self.storyboard instantiateViewControllerWithIdentifier:@"layingex"];
    [self presentViewController:lex animated:YES completion:nil];
    [lex getstr2:str];

    

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
