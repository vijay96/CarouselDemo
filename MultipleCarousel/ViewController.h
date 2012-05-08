//
//  ViewController.h
//  MultipleCarousel
//
//  Created by Vijay Chavan on 04/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"
@interface ViewController : UIViewController<iCarouselDelegate,iCarouselDataSource,UITextFieldDelegate>
{
    IBOutlet UISegmentedControl *segmentValue;
    IBOutlet UISlider *radiusCount;
    IBOutlet UISlider *angleCount;
    IBOutlet UISlider *itemCount;
    
    IBOutlet UITextField *visibleItemField;
    
    NSMutableArray *labelArray;
    NSMutableArray *leftArray;
    NSMutableArray *middleArray;
    NSMutableArray *rightArray;
    
}

-(id)initWithArray:(NSMutableArray *)_array;
@property (strong, nonatomic) IBOutlet iCarousel *rightCarousel;
@property (strong, nonatomic) IBOutlet iCarousel *middleCarousel;
@property (strong, nonatomic) IBOutlet iCarousel *leftCarousel;
- (IBAction)itemSlider:(id)sender;
- (IBAction)angleSlider:(id)sender;
- (IBAction)radiusSlider:(id)sender;
- (IBAction)segmentControl:(id)sender;
//-(int)numberOfItemsInCarousel;
//-(int)numberOfVisiblesInCarousel;
//-(float)carouselAngle;
//
- (IBAction)okButton:(id)sender;

- (IBAction)changeElementButton:(id)sender;

@end
