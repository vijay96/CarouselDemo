//
//  ViewController.m
//  MultipleCarousel
//
//  Created by Vijay Chavan on 04/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "InsertArray.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize rightCarousel;
@synthesize middleCarousel;
@synthesize leftCarousel;
static int flag;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
    
        labelArray=[[NSMutableArray alloc]initWithObjects:@"label1",@"label2",@"label3",@"label4",@"label5",@"label6",@"label7",@"label8",@"label9",@"label10", nil];
       
   
        
    }
    
    return self;
    
}



-(id)initWithArray:(NSMutableArray *)_array
{
    self=[super initWithNibName:@"ViewController" bundle:nil];
    if(self)
    {
        labelArray=_array ;   
    }
    [rightCarousel setUp];
    return self;
}
- (void)viewDidLoad
{
 
    [super viewDidLoad];
    visibleItemField.text=[NSString stringWithFormat:@"%d",labelArray.count ];
    [rightCarousel angleOfCarousel:angleCount.value];
    [middleCarousel angleOfCarousel:angleCount.value];
    [leftCarousel angleOfCarousel:angleCount.value];
    
    [rightCarousel itemWidth:radiusCount.value];
    [middleCarousel itemWidth:radiusCount.value];
    [leftCarousel itemWidth:radiusCount.value];
    
  
    if(visibleItemField.text.intValue>labelArray.count)
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Alert!!" message:[NSString stringWithFormat:@"Enter the Value between 0 and %d",[labelArray count]] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
    
    else
    {
        [rightCarousel numberOfItems:visibleItemField.text.intValue];
        [middleCarousel numberOfItems:visibleItemField.text.intValue];  
        [leftCarousel numberOfItems:visibleItemField.text.intValue];
  
    }
  
}


- (NSUInteger)flagToSet:(iCarousel *)carousel
{
    
    if(flag<3)
    {
       
        return flag++;
    
    }

    else 
    {
        return segmentValue.selectedSegmentIndex;   
    }
    
    
}
- (void)viewDidUnload
{
    [self setRightCarousel:nil];
    [self setMiddleCarousel:nil];
    [self setLeftCarousel:nil];
    itemCount = nil;
    angleCount = nil;
    radiusCount = nil;
    segmentValue = nil;
    visibleItemField = nil;
    [super viewDidUnload];
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}


#pragma carouselMethods

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index
{
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(40, 60,200,40)];
    UILabel *label=[[UILabel alloc]initWithFrame:view.bounds];
    label.text=[labelArray objectAtIndex:index];
    [view addSubview:label];
    return view;
}

- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carouse
{
    return 0;
}
- (CGFloat)carouselItemWidth:(iCarousel *)carousel
{
    return 0;
}
- (CGFloat)carouselAngle:(iCarousel *)carousel
{
   return 0;
}


#pragma slierMethods
- (IBAction)itemSlider:(id)sender 
{
  
    
    if(segmentValue.selectedSegmentIndex==0)
    {
        [leftCarousel setUp];
    }
    if(segmentValue.selectedSegmentIndex==1)
    {
        [middleCarousel setUp];
    }
    if(segmentValue.selectedSegmentIndex==2)
    {
        [rightCarousel setUp];
    }
}

- (IBAction)angleSlider:(id)sender 
{
    
    if(segmentValue.selectedSegmentIndex==0)
    {
       
        [leftCarousel angleOfCarousel:angleCount.value];
    }
    if(segmentValue.selectedSegmentIndex==1)
    {
       [middleCarousel angleOfCarousel:angleCount.value];
    }
    if(segmentValue.selectedSegmentIndex==2)
    {
       [rightCarousel angleOfCarousel:angleCount.value];
    }

}

- (IBAction)radiusSlider:(id)sender 
{
    
    
    if(segmentValue.selectedSegmentIndex==0)
    {
        
        [leftCarousel itemWidth:radiusCount.value];
    }
    if(segmentValue.selectedSegmentIndex==1)
    {
        [middleCarousel itemWidth:radiusCount.value];
    }
    if(segmentValue.selectedSegmentIndex==2)
    {
        [rightCarousel itemWidth:radiusCount.value];    
    }
}

- (IBAction)segmentControl:(id)sender 
{

  
}
- (IBAction)okButton:(id)sender 
{
    
    
    [self viewDidLoad];
    if(segmentValue.selectedSegmentIndex==0)
    {
        [leftCarousel setUp];
    }
    if(segmentValue.selectedSegmentIndex==1)
    {
        [middleCarousel setUp];
    }
    if(segmentValue.selectedSegmentIndex==2)
    {
        [rightCarousel setUp];
    }

}

- (IBAction)changeElementButton:(id)sender 
{
    InsertArray *insert=[[InsertArray alloc]init];
    [self presentModalViewController:insert animated:YES];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(visibleItemField==textField)
    {
        [visibleItemField resignFirstResponder];
    }
    
    return TRUE;
}
@end
