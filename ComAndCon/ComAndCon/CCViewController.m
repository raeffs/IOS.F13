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
    self.pickerDummyStringArray = [NSArray arrayWithObjects:@"One", @"Two", @"Three", nil];
    [self useDummyData];
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
    return [self.pickerStringArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.pickerStringArray objectAtIndex:row];
}

- (IBAction)dataSourceChanged:(UISegmentedControl*)sender
{
    switch ([sender selectedSegmentIndex]) {
        default:
        case 0:
            [self useDummyData];
            break;
        case 1:
            [self useXmlData];
            break;
        case 2:
            [self useJsonData];
            break;
    }
    [self.pickerView reloadAllComponents];
}

- (void)useDummyData
{
    self.pickerStringArray = self.pickerDummyStringArray;
}

- (void)useXmlData
{
    self.pickerStringArray = [self getXMLData];
}

- (void)useJsonData
{
    self.pickerStringArray = [self getJSONData];
}

- (IBAction)testOperationQueue:(id)sender
{
    __block NSMutableArray * orderArray = [[NSMutableArray alloc] initWithCapacity:3];
    
    void (^operationBlock1)(void) = ^(void){ [orderArray addObject:@"1"]; };
    void (^operationBlock2)(void) = ^(void){ [orderArray addObject:@"2"]; };
    void (^operationBlock3)(void) = ^(void){ [orderArray addObject:@"3"]; };
    
    NSBlockOperation * operation1 = [NSBlockOperation blockOperationWithBlock:operationBlock1];
    NSBlockOperation * operation2 = [NSBlockOperation blockOperationWithBlock:operationBlock2];
    NSBlockOperation * operation3 = [NSBlockOperation blockOperationWithBlock:operationBlock3];
    
    [operation1 addDependency:operation2];
    [operation1 addDependency:operation3];
    [operation2 addDependency:operation3];
    
    NSOperationQueue * operationQueue = [[NSOperationQueue alloc] init];
    [operationQueue addOperations:[NSArray arrayWithObjects:operation1, operation2, operation3, nil] waitUntilFinished:YES];
    
    NSString * message = [NSString stringWithFormat:@"The three operations were executed in the following order: %@, %@, %@.", [orderArray objectAtIndex:0], [orderArray objectAtIndex:1], [orderArray objectAtIndex:2], nil];
    UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"Block Operation Ordering" message:message delegate:nil cancelButtonTitle:@"OK, thanx" otherButtonTitles:nil, nil];
    [alertView show];
}

- (NSArray*)getXMLData
{
    self.tmpXmlArray = [[NSMutableArray alloc] initWithCapacity:5];
    NSXMLParser * parser = [[NSXMLParser alloc] initWithContentsOfURL: [NSURL URLWithString:@"http://wherever.ch/hslu/iPhoneAdressData.xml"]];
    [parser setDelegate:self];
    [parser parse];
    return [NSArray arrayWithArray:self.tmpXmlArray];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if (![elementName isEqual: @"Entry"]) { return; }
    NSString * item = [NSString stringWithFormat:@"%@ %@", [attributeDict valueForKey:@"firstName"], [attributeDict valueForKey:@"lastName"], nil];
    [self.tmpXmlArray addObject:item];
}

- (NSArray*)getJSONData
{
    self.tmpXmlArray = [[NSMutableArray alloc] initWithCapacity:5];
    NSData * data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://wherever.ch/hslu/iPhoneAdressData.json"]];
    NSArray * array = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    for (NSDictionary * item in array) {
        [self.tmpXmlArray addObject:[NSString stringWithFormat:@"%@ %@", [item valueForKey:@"firstName"], [item valueForKey:@"lastName"], nil]];
    }
    return [NSArray arrayWithArray:self.tmpXmlArray];
}

@end
