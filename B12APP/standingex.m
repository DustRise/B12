//
//  standingex.m
//  B12APP
//
//  Created by Dustrise on 5/20/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import "standingex.h"
#import "ViewController.h"
#import "AddToPlan.h"

@interface standingex ()

@end

@implementation standingex

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
    navigation.tintColor=color;
    tab.tintColor=color;
    self.view.backgroundColor=[UIColor colorWithRed:205.0f/255.0f green:133.0f/255.0f blue:63.0f/255.0f alpha:1];
    

    arrayImages=[[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"stand1.gif"],[UIImage imageNamed:@"stand2.gif"],[UIImage imageNamed:@"stand3.gif"],nil];
    array2=[[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"chair1.jpg"],[UIImage imageNamed:@"chair2.jpg"],[UIImage imageNamed:@"chair3.jpg"],[UIImage imageNamed:@"chair4.jpg"],[UIImage imageNamed:@"chair5.jpg"],nil];
    NSLog(@"images count is %d",[arrayImages count]);
    //leftswipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(leftswipe:)];
    leftswipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(SWIPED:)];
    
    leftswipe.direction=UISwipeGestureRecognizerDirectionLeft;
    //leftswipe.numberOfTouchesRequired=1;
    [self.view addGestureRecognizer:leftswipe];
    
    //rightswipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(Rightswipe:)];
    
    rightswipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(SWIPED:)];
    rightswipe.direction=UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:rightswipe];
    

}
-(void)getstr1:(id)sender1;
{
    str2=sender1;
    NSLog(@"the data is %@",str2);
    navigation.topItem.title=str2;
    

    getstr1=sender1;
    if([getstr1 isEqualToString:@"wall"])
    {
        imageview.image=[UIImage imageNamed:@"office9.gif"];
    }
    else if([getstr1 isEqualToString:@"jump"])
    {
        imageview.image=[UIImage imageNamed:@"chair1.jpg"];
    }
    else if([getstr1 isEqualToString:@"run"])
    {
        imageview.image=[UIImage imageNamed:@"stand1.gif"];
    }
}

-(void)SWIPED:(UISwipeGestureRecognizer*)sender
{
    if([getstr1 isEqualToString:@"wall"])
{
    if (sender == leftswipe )
    {
        if (count>=0)
        {
            imageview.image=[arrayImages objectAtIndex:count];
            count--;
        }
        else
        {
            count=[arrayImages count]-1;
            imageview.image=[arrayImages objectAtIndex:count];
        }
    }
    else if(sender==rightswipe)
    {
        if (count<=[arrayImages count]-1)
        {
            imageview.image=[arrayImages objectAtIndex:count];
            count++;
            
        }
        else
        {
            count=0;
            imageview.image=[arrayImages objectAtIndex:count];
            
        }
    }
    
}

else if([getstr1 isEqualToString:@"jump"])
{
    
    
    if (sender == leftswipe )
    {
        if (count>=0)
        {
            imageview.image=[array2 objectAtIndex:count];
            count--;
        }
        else
        {
            count=[array2 count]-1;
            imageview.image=[array2 objectAtIndex:count];
        }
    }
    else if(sender==rightswipe)
    {
        if (count<=[array2 count]-1)
        {
            imageview.image=[array2 objectAtIndex:count];
            count++;
        }
        else
        {
            count=0;
            imageview.image=[array2 objectAtIndex:count];
            
        }
    }
    
}
else if([getstr1 isEqualToString:@"run"])
{
    
    
    if (sender == leftswipe )
    {
        if (count>=0)
        {
            imageview.image=[arrayImages objectAtIndex:count];
            count--;
        }
        else
        {
            count=[arrayImages count]-1;
            imageview.image=[arrayImages objectAtIndex:count];
        }
    }
    else if(sender==rightswipe)
    {
        if (count<=[arrayImages count]-1)
        {
            imageview.image=[arrayImages objectAtIndex:count];
            count++;
        }
        else
        {
            count=0;
            imageview.image=[arrayImages objectAtIndex:count];
            
        }
    }
    
}

}

-(IBAction)back3;
{
    [self dismissModalViewControllerAnimated:YES];
}
-(IBAction)addtostand;
{
    AddToPlan *add=[[AddToPlan alloc]init];
    add=[self.storyboard instantiateViewControllerWithIdentifier:@"AddToPlan"];
    [self presentViewController:add animated:YES completion:nil];
    [add getlbl:str2];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
