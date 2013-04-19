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
    _tmpXmlArray = [[NSMutableArray alloc] initWithCapacity:5];
    _pickerDummyStringArray = [NSArray arrayWithObjects:@"One", @"Two", @"Three", nil];
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
    return [_pickerStringArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_pickerStringArray objectAtIndex:row];
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
    _pickerStringArray = _pickerDummyStringArray;
}

- (void)useXmlData
{
    _pickerStringArray = [self getXMLData];
}

- (void)useJsonData
{
    
}

- (IBAction)testOperationQueue:(id)sender
{
    
}

- (NSArray*)getXMLData
{
    NSXMLParser * parser = [[NSXMLParser alloc] initWithContentsOfURL: [NSURL URLWithString:@"http://wherever.ch/hslu/iPhoneAdressData.xml"]];
    [parser setDelegate:self];
    [parser parse];
    return [NSArray arrayWithArray:self.tmpXmlArray];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if (![elementName isEqual: @"Entry"]) { return; }
    NSString * item = [NSString stringWithFormat:@"%@ %@", [attributeDict valueForKey:@"firstName"], [attributeDict valueForKey:@"lastName"], nil];
    [_tmpXmlArray addObject:item];
}

- (NSArray*)getJSONData
{
    return nil;
}

@end
