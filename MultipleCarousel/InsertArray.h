//
//  InsertArray.h
//  MultipleCarousel
//
//  Created by Vijay Chavan on 07/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InsertArray : UIViewController<UITextFieldDelegate>
{
    
    IBOutlet UITextField *item12;
    IBOutlet UITextField *item11;
    IBOutlet UITextField *item10;
    IBOutlet UITextField *item9;
    IBOutlet UITextField *item8;
    IBOutlet UITextField *item7;
    IBOutlet UITextField *item6;
    IBOutlet UITextField *item5;
    IBOutlet UITextField *item4;
    IBOutlet UITextField *item3;
    IBOutlet UITextField *item2;
    IBOutlet UITextField *item1;
    IBOutlet UITextField *noOfItems;
    NSMutableArray *array;
    
    
    IBOutlet UILabel *Label12;
    IBOutlet UILabel *Label11;
    IBOutlet UILabel *Label10;
    IBOutlet UILabel *Label8;
    IBOutlet UILabel *Label9;
    IBOutlet UILabel *Label7;
    IBOutlet UILabel *Label6;
    IBOutlet UILabel *Label5;
    IBOutlet UILabel *Label4;
    IBOutlet UILabel *Label3;
    IBOutlet UILabel *Label1;
    IBOutlet UILabel *Label2;
}
- (IBAction)addButton:(id)sender;

- (IBAction)okButton:(id)sender;
@end
