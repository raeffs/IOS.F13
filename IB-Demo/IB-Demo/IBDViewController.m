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

bool alertDisplayed = false;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderValueChanged:(UISlider*)sender
{
    float value = sender.value;
    _sliderLabel.text = [NSString stringWithFormat:@"%.02f", value];
    
    if (value >= 90)
    {
        if (!alertDisplayed)
        {
            alertDisplayed = true;
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Wow..." message:@"You just did it!" delegate:nil cancelButtonTitle:@"Yes!" otherButtonTitles:nil];
            [alert show];
        }
    }
    else
    {
        alertDisplayed = false;
    }
}

- (IBAction)colorButtonValueChanged:(UISegmentedControl*)sender
{
    switch (sender.selectedSegmentIndex)
    {
        case 0:
            self.view.backgroundColor = [UIColor blackColor];
            break;
            
        case 1:
            self.view.backgroundColor = [UIColor grayColor];
            break;
            
        case 2:
            self.view.backgroundColor = [UIColor purpleColor];
            
        default:
            break;
    }
}

- (IBAction)spinButtonPressed:(UIButton*)sender
{
    if (_spinner.isAnimating)
    {
        [_spinner stopAnimating];
        [sender setTitle:@"start animation" forState:UIControlStateNormal];
    }
    else
    {
        [_spinner startAnimating];
        [sender setTitle:@"stop animation" forState:UIControlStateNormal];
    }
}

- (IBAction)infoButtonPressed:(UIButton*)sender
{
    UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"App-Info" message:@"Macht viele kleine Dinge..." delegate:nil cancelButtonTitle:@"Zur Kenntnis genommen!" otherButtonTitles:nil];
    [alertView show];
}
@end
