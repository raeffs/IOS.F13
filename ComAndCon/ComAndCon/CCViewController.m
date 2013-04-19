//
//  CCViewController.m
//  ComAndCon
//
//  Created by Raphael Fleischlin on 19.04.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _pickerDummyStringArray = [NSArray arrayWithObjects:@"One", @"Two", @"Three", nil];
    _pickerStringArray = _pickerDummyStringArray;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [_pickerStringArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_pickerStringArray objectAtIndex:row];
}

- (IBAction)dataSourceChanged:(UISegmentedControl*)sender
{
    
}

- (IBAction)testOperationQueue:(id)sender
{
    
}

- (NSArray*)getXMLData
{
    return nil;
}

- (NSArray*)getJSONData
{
    return nil;
}

@end
