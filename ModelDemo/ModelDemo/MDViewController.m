//
//  MDViewController.m
//  ModelDemo
//
//  Created by Raphael Fleischlin on 08.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "MDViewController.h"
#import "MDSecondViewController.h"
#import "MDThirdViewController.h"

@interface MDViewController ()

@end

@implementation MDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _secondViewController = [[MDSecondViewController alloc] init];
    _secondViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    _thirdViewController = [[MDThirdViewController alloc] init];
    _thirdViewController.modalTransitionStyle = UIModalTransitionStylePartialCurl;
}

- (void)viewWillAppear:(BOOL)animated
{
    _showCounter++;
    if (_showCounter >= 5)
    {
        _counterLabel.text = [NSString stringWithFormat:@"You've watched me %i times, old pervert!!!", _showCounter];
    }
    else if (_showCounter >= 2)
    {
        _counterLabel.text = [NSString stringWithFormat:@"You've watched me %i times, stalker!!", _showCounter];
    }
    else
    {
        _counterLabel.text = [NSString stringWithFormat:@"Hi there!"];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showSecondViewPressed:(UIButton*)sender
{
    [self presentViewController:_secondViewController animated:true completion:nil];
}

- (IBAction)showThirdViewPressed:(UIButton*)sender
{
    [self presentViewController:_thirdViewController animated:true completion:nil];
}
@end
