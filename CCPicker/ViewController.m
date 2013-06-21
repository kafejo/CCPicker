//
//  ViewController.m
//  CCPicker
//
//  Created by Aleš Kocur on 12.05.13.
//  Copyright (c) 2013 Aleš Kocur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // add some items into array
    _items = [@[@"Item 1", @"Item 2", @"Item 3"] mutableCopy];
    
    // set delegate
    _picker.pickerDelegate = self;
    
    // reload picker - it calls all delegate method
    [_picker reloadData];
    
}

#pragma mark - CCPicker delegate methods

    // return the number of items 
-(NSInteger)numberOfItemsForPicker:(CCPicker *)picker{
    return [_items count];
}
    // if you want change actual(initial) page do it here (0 - first page)
-(NSInteger)actualPageForCCPicker:(CCPicker *)picker{
    return self.pageController.currentPage;
}
    // items in picker
-(id)CCPicker:(CCPicker *)picker labelForRow:(NSInteger)itemIndex{
    // Creating UILabel, but it could be anything (UIImage, UITextField, etc..)
    
    UILabel *tempLabel = [[UILabel alloc] init];
    tempLabel.text = [_items objectAtIndex:itemIndex];
    tempLabel.backgroundColor = [UIColor whiteColor];
    //tempLabel.textColor = [UIColor blackColor];
    tempLabel.textAlignment = NSTextAlignmentCenter;
    
    return tempLabel;
}

// do something when page did change
-(void)CCPicker:(CCPicker *)picker didChangePage:(NSInteger)page{
    
    if (page < [_items count]) {
        _label.text = [_items objectAtIndex:page];
    }
    self.pageController.currentPage = page;
}

#pragma mark - PageController methods

- (IBAction)changeValue:(id)sender {
    [self.picker changeActualPageTo:self.pageController.currentPage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
