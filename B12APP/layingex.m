//
//  layingex.m
//  B12APP
//
//  Created by Dustrise on 5/20/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import "layingex.h"
#import "ViewController.h"
#import "AddToPlan.h"

@interface layingex ()

@end

@implementation layingex

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
    

    arrayImages=[[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"hipflex.jpg"],[UIImage imageNamed:@"legraises.jpg"],[UIImage imageNamed:@"pirlformis.jpg"],[UIImage imageNamed:@"lyingonfloor.jpg"],[UIImage imageNamed:@"harmstring.jpg"],nil];
    

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
-(void)getstr2:(id)sender2;
{
    str2=sender2;
    NSLog(@"the data is %@",str2);
    navigation.topItem.title=str2;
    

    getstr2=sender2;
    if([getstr2 isEqualToString:@"bed1"])
    {
        imageview.image=[UIImage imageNamed:@"hipflex.jpg"];
    }
    else if([getstr2 isEqualToString:@"bed2"])
    {
        imageview.image=[UIImage imageNamed:@"legraises.jpg"];
    }
    else if([getstr2 isEqualToString:@"bed3"])
    {
        imageview.image=[UIImage imageNamed:@"pirlformis.jpg"];
    }
    else if([getstr2 isEqualToString:@"bed4"])
    {
        imageview.image=[UIImage imageNamed:@"lyingonfloor.jpg"];
    }
    else if([getstr2 isEqualToString:@"bed5"])
    {
        imageview.image=[UIImage imageNamed:@"harmstring.jpg"];
    }
    

    
    
    
}

-(void)SWIPED:(UISwipeGestureRecognizer*)sender
{if([getstr2 isEqualToString:@"bed1"])
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
    else if([getstr2 isEqualToString:@"bed2"])
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
    else if([getstr2 isEqualToString:@"bed3"])
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

    
else if([getstr2 isEqualToString:@"bed4"])
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
else if([getstr2 isEqualToString:@"bed5"])
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
    

-(IBAction)back3click;
{
    [self dismissModalViewControllerAnimated:YES];
}
-(IBAction)laybtn;
{
    AddToPlan *add=[[AddToPlan alloc]init];
    add=[self.storyboard instantiateViewControllerWithIdentifier:@"AddToPlan"];
    [self presentViewController: add animated:YES completion:nil];
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
