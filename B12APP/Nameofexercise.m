//
//  Nameofexercise.m
//  B12APP
//
//  Created by SUKKU on 5/18/13.
//  Copyright (c) 2013 Dustrise. All rights reserved.
//

#import "Nameofexercise.h"
#import "ViewController.h"
#import "AddToPlan.h"

@interface Nameofexercise ()

@end

@implementation Nameofexercise

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
    

    arrayImages=[[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"office10.gif"],[UIImage imageNamed:@"office12.gif"],[UIImage imageNamed:@"office13.gif"],[UIImage imageNamed:@"office14.gif"],nil];
    array2=[[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"chair1.jpg"],[UIImage imageNamed:@"chair2.jpg"],[UIImage imageNamed:@"chair3.jpg"],[UIImage imageNamed:@"chair4.jpg"],[UIImage imageNamed:@"chair5.jpg"],nil];
    
    array3=[[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"lateralflexion.jpg"],[UIImage imageNamed:@"neckextension.jpg"],[UIImage imageNamed:@"neckretraction.jpg"],[UIImage imageNamed:@"neckroration.jpg"],[UIImage imageNamed:@"neckroration.jpg"],nil];
   
    array4=[[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"yoga-sleep-balasana.jpg"],[UIImage imageNamed:@"yoga-sleep-marichyasana.jpg"],[UIImage imageNamed:@"yoga-sleep-paschimottasana.jpg"],[UIImage imageNamed:@"yoga-sleep-starfish-savasana.jpg"],[UIImage imageNamed:@"yoga-sleep-starfish-savasana.jpg"],nil];
   
    array5=[[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"dorseflexion.jpg"],[UIImage imageNamed:@"gastrocstretch.jpg"],[UIImage imageNamed:@"dorseflexion.jpg"],[UIImage imageNamed:@"unilateralheelrise.jpg"],[UIImage imageNamed:@"unilateralheelrise.jpg"],nil];
    



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

-(void)getstr:(id)sender;
{
    str2=sender;
    NSLog(@"the data is %@",str2);
    navigation.topItem.title=str2;
 
    if([getstr isEqualToString:@"Office"])
    {
        imageview.image=[UIImage imageNamed:@"office9.gif"];
    }
    else if([getstr isEqualToString:@"Chair"])
    {
        imageview.image=[UIImage imageNamed:@"chair1.jpg"];
    }
    else if([getstr isEqualToString:@"neck"])
    {
        imageview.image=[UIImage imageNamed:@"neckextension.jpg"];
    }
    else if([getstr isEqualToString:@"yoga"])
    {
        imageview.image=[UIImage imageNamed:@"yoga-sleep-balasana.jpg"];
    }
    else if([getstr isEqualToString:@"ankle"])
    {
        imageview.image=[UIImage imageNamed:@"unilateralheelrise.jpg"];
    }
    


}

-(void)SWIPED:(UISwipeGestureRecognizer*)sender
{
    if([getstr isEqualToString:@"Office"])
    {
    if (sender == leftswipe )
    {
        if (count>=0)
        {
            imageview.image=[arrayImages  objectAtIndex:count];
            count--;
        }
        else
        {
            count=[arrayImages count]-1;
            imageview.image=[arrayImages  objectAtIndex:count];
        }
    }
    else if(sender==rightswipe)
    {
        if (count<=[arrayImages count]-1)
        {
            imageview.image=[arrayImages objectAtIndex:count];
            count++;
            
        }
        else {
            count=0;
            imageview.image=[arrayImages objectAtIndex:count];
            
        }
    }
    }
    
    
    else if([getstr isEqualToString:@"Chair"])
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
            else {
                count=0;
                imageview.image=[array2 objectAtIndex:count];
                
            }
        }

        
    }
             
    
    else if([getstr isEqualToString:@"neck"])
    {
        
        
        if (sender == leftswipe )
        {
            if (count>=0)
            {
                imageview.image=[array3 objectAtIndex:count];
                count--;
            }
            else
            {
                count=[array3 count]-1;
                imageview.image=[array3 objectAtIndex:count];
            }
        }
        else if(sender==rightswipe)
        {
            if (count<=[array3 count]-1)
            {
                imageview.image=[array2 objectAtIndex:count];
                count++;
                
            }
            else {
                count=0;
                imageview.image=[array2 objectAtIndex:count];
                
            }
        }
        
        
    }
    else if([getstr isEqualToString:@"yoga"])
    {
        
        
        if (sender == leftswipe )
        {
            if (count>=0)
            {
                imageview.image=[array4 objectAtIndex:count];
                count--;
            }
            else
            {
                count=[array4 count]-1;
                imageview.image=[array4 objectAtIndex:count];
            }
        }
        else if(sender==rightswipe)
        {
            if (count<=[array4 count]-1)
            {
                imageview.image=[array4 objectAtIndex:count];
                count++;
                
            }
            else {
                count=0;
                imageview.image=[array4 objectAtIndex:count];
                
            }
        }
    }
    else if([getstr isEqualToString:@"ankle"])
    {
        
        
        if (sender == leftswipe )
        {
            if (count>=0)
            {
                imageview.image=[array5 objectAtIndex:count];
                count--;
            }
            else
            {
                count=[array5 count]-1;
                imageview.image=[array5 objectAtIndex:count];
            }
        }
        else if(sender==rightswipe)
        {
            if (count<=[array5 count]-1)
            {
                imageview.image=[array5 objectAtIndex:count];
                count++;
                
            }
            else {
                count=0;
                imageview.image=[array5 objectAtIndex:count];
                
            }
        }
    }


}
-(IBAction)back2;
{
[self dismissModalViewControllerAnimated:YES];
}
-(IBAction)Add;
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
@end
