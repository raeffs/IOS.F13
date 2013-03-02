//
//  IBDViewController.h
//  IB-Demo
//
//  Created by Raphael Fleischlin on 02.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IBDViewController : UIViewController

- (IBAction)sliderValueChanged:(UISlider*)sender;

@property(strong) IBOutlet UILabel * sliderLabel;

- (IBAction)colorButtonValueChanged:(UISegmentedControl*)sender;

@property(strong) IBOutlet UIActivityIndicatorView * spinner;

- (IBAction)spinButtonPressed:(UIButton*)sender;

- (IBAction)infoButtonPressed:(UIButton*)sender;

@end
