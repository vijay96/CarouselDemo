//
//  InsertArray.m
//  MultipleCarousel
//
//  Created by Vijay Chavan on 07/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "InsertArray.h"
#import "ViewController.h"
@interface InsertArray ()

@end

@implementation InsertArray

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
    item1.hidden=item2.hidden=item3.hidden=item4.hidden=item5.hidden=item6.hidden=item7.hidden=item8.hidden=item9.hidden=item10.hidden=item11.hidden=item12.hidden=TRUE;
    Label1.hidden=Label2.hidden=Label3.hidden=Label4.hidden=Label5.hidden=Label6.hidden=Label7.hidden=Label8.hidden=Label9.hidden=Label10.hidden=Label11.hidden=Label12.hidden=TRUE;
    array=[[NSMutableArray alloc]init];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    item1 = nil;
    item2 = nil;
    item3 = nil;
    item4 = nil;
    item5 = nil;
    item6 = nil;
    item7 = nil;
    item8 = nil;
    item9 = nil;
    item10 = nil;
    item11 = nil;
    item12 = nil;
    Label1 = nil;
    Label2 = nil;
    Label3 = nil;
    Label4 = nil;
    Label5 = nil;
    Label6 = nil;
    Label7 = nil;
    Label9 = nil;
    Label8 = nil;
    Label10 = nil;
    Label11 = nil;
    Label12 = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (IBAction)addButton:(id)sender 
{
    if(![item1.text isEqual:@""])
    {
      [array addObject:item1.text];  
    }
    
    if(![item2.text isEqual:@""])
    {
        [array addObject:item2.text];  
    }
    if(![item3.text isEqual:@""])
    {
        [array addObject:item3.text];  
    }
    if(![item4.text isEqual:@""])
    {
        [array addObject:item4.text];  
    }
    if(![item5.text isEqual:@""])
    {
        [array addObject:item5.text];  
    }
    if(![item6.text isEqual:@""])
    {
        [array addObject:item6.text];  
    }
    if(![item7.text isEqual:@""])
    {
        [array addObject:item7.text];  
    }
    if(![item8.text isEqual:@""])
    {
        [array addObject:item8.text];  
    }
    if(![item9.text isEqual:@""])
    {
        [array addObject:item9.text];  
    }
    if(![item10.text isEqual:@""])
    {
        [array addObject:item10.text];  
    }
    if(![item11.text isEqual:@""])
    {
        [array addObject:item11.text];  
    }
    if(![item12.text isEqual:@""])
    {
        [array addObject:item12.text];  
    }

   
    ViewController *controller=[[ViewController alloc]initWithArray:array];
    controller.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    
    [self presentModalViewController:controller animated:YES];
    
}

- (IBAction)okButton:(id)sender 
{
    [self viewDidLoad];
    switch (noOfItems.text.intValue) 
    {
        case 1:
            item1.hidden=FALSE;    
            Label1.hidden=FALSE;
           
            break;
            
        case 2:
            item1.hidden=item2.hidden=FALSE;
            Label1.hidden=Label2.hidden=FALSE;
            break;
           
        case 3:
            item1.hidden=item2.hidden=item3.hidden=FALSE;
            Label1.hidden=Label2.hidden=Label3.hidden=FALSE;
            break;
            
        case 4:
            item1.hidden=item2.hidden=item3.hidden=item4.hidden=FALSE;
            Label1.hidden=Label2.hidden=Label3.hidden=Label4.hidden=FALSE;
            break;
        case 5:
            item1.hidden=item2.hidden=item3.hidden=item4.hidden=item5.hidden=FALSE;
            Label1.hidden=Label2.hidden=Label3.hidden=Label4.hidden=Label5.hidden=FALSE;
            break; 
        case 6:
            item1.hidden=item2.hidden=item3.hidden=item4.hidden=item5.hidden=item6.hidden=FALSE;
            Label1.hidden=Label2.hidden=Label3.hidden=Label4.hidden=Label5.hidden=Label6.hidden=FALSE;
            break; 
        case 7:
             item1.hidden=item2.hidden=item3.hidden=item4.hidden=item5.hidden=item6.hidden=item7.hidden=FALSE;
             Label1.hidden=Label2.hidden=Label3.hidden=Label4.hidden=Label5.hidden=Label6.hidden=Label7.hidden=FALSE;
            break; 
        case 8:
            item1.hidden=item2.hidden=item3.hidden=item4.hidden=item5.hidden=item6.hidden=item7.hidden=item8.hidden=FALSE;
            Label1.hidden=Label2.hidden=Label3.hidden=Label4.hidden=Label5.hidden=Label6.hidden=Label7.hidden=Label8.hidden=FALSE;
            break; 
        case 9:
            item1.hidden=item2.hidden=item3.hidden=item4.hidden=item5.hidden=item6.hidden=item7.hidden=item8.hidden=item9.hidden=FALSE;
            Label1.hidden=Label2.hidden=Label3.hidden=Label4.hidden=Label5.hidden=Label6.hidden=Label7.hidden=Label8.hidden=Label9.hidden=FALSE;
            break; 
        case 10:
            item1.hidden=item2.hidden=item3.hidden=item4.hidden=item5.hidden=item6.hidden=item7.hidden=item8.hidden=item9.hidden=item10.hidden=FALSE;
            Label1.hidden=Label2.hidden=Label3.hidden=Label4.hidden=Label5.hidden=Label6.hidden=Label7.hidden=Label8.hidden=Label9.hidden=Label10.hidden=FALSE;
            break; 
        case 11:
           item1.hidden=item2.hidden=item3.hidden=item4.hidden=item5.hidden=item6.hidden=item7.hidden=item8.hidden=item9.hidden=item10.hidden=item11.hidden=FALSE;
            Label1.hidden=Label2.hidden=Label3.hidden=Label4.hidden=Label5.hidden=Label6.hidden=Label7.hidden=Label8.hidden=Label9.hidden=Label10.hidden=Label11.hidden=FALSE;
            break;  
        case 12:
            item1.hidden=item2.hidden=item3.hidden=item4.hidden=item5.hidden=item6.hidden=item7.hidden=item8.hidden=item9.hidden=item10.hidden=item11.hidden=item12.hidden=FALSE;
            Label1.hidden=Label2.hidden=Label3.hidden=Label4.hidden=Label5.hidden=Label6.hidden=Label7.hidden=Label8.hidden=Label9.hidden=Label10.hidden=Label11.hidden=Label12.hidden=FALSE;
            break; 
        default:
            item1.hidden=item2.hidden=item3.hidden=item4.hidden=item5.hidden=item6.hidden=item7.hidden=item8.hidden=item9.hidden=item10.hidden=item11.hidden=item12.hidden=TRUE;
            Label1.hidden=Label2.hidden=Label3.hidden=Label4.hidden=Label5.hidden=Label6.hidden=Label7.hidden=Label8.hidden=Label9.hidden=Label10.hidden=Label11.hidden=Label12.hidden=TRUE;
            break;
    }
}

- (IBAction)cancelButton:(id)sender 
{
    [self dismissModalViewControllerAnimated:YES];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField==noOfItems) 
    {
        [noOfItems resignFirstResponder];
    }
    if(textField==item1)
    {
        [item2 becomeFirstResponder];     
    }
    
    if(textField==item2)
    {
        [item3 becomeFirstResponder];     
    }
    if(textField==item3)
    {
        [item4 becomeFirstResponder];     
    }
    if(textField==item4)
    {
        [item5 becomeFirstResponder];     
    }
    if(textField==item5)
    {
        [item6 becomeFirstResponder];     
    }
    if(textField==item6)
    {
        [item7 becomeFirstResponder];     
    }
    if(textField==item7)
    {
        [item8 becomeFirstResponder];     
    }
    if(textField==item8)
    {
        [item9 becomeFirstResponder];     
    }
    if(textField==item9)
    {
        [item10 becomeFirstResponder];     
    }
    if(textField==item10)
    {
        [item11 becomeFirstResponder];     
    }
    if(textField==item11)
    {
        [item12 becomeFirstResponder];     
    }
    if(textField==item12)
    {
        [item12 resignFirstResponder];     
    }
    return TRUE;
}
@end
