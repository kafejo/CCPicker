//
//  ViewController.h
//  CCPicker
//
//  Created by Aleš Kocur on 12.05.13.
//  Copyright (c) 2013 Aleš Kocur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCPicker.h"

@interface ViewController : UIViewController<CCPickerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *label;
@property IBOutlet CCPicker *picker;
@property (strong, nonatomic) IBOutlet UIPageControl *pageController;

@property (nonatomic, retain) NSMutableArray *items;
- (IBAction)changeValue:(id)sender;

@end
