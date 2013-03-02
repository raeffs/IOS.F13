//
//  IBDViewController.m
//  IB-Demo
//
//  Created by Raphael Fleischlin on 02.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "IBDViewController.h"

@interface IBDViewController ()

@end

@implementation IBDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderValueChanged:(UISlider*)sender {
    float value = sender.value;
    _sliderLabel.text = [NSString stringWithFormat:@"%.02f", value];
}
@end
