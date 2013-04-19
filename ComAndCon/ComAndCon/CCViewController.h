//
//  CCViewController.h
//  ComAndCon
//
//  Created by Raphael Fleischlin on 19.04.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate, NSXMLParserDelegate>

@property (strong, nonatomic) NSArray* pickerStringArray;

@property (strong, nonatomic) NSArray* pickerDummyStringArray;

@property (strong, nonatomic) NSMutableArray* tmpXmlArray;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

- (IBAction)dataSourceChanged:(UISegmentedControl*)sender;

- (IBAction)testOperationQueue:(id)sender;

- (NSArray*)getXMLData;

- (NSArray*)getJSONData;

@end
