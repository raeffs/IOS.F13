//
//  MDThirdViewController.m
//  ModelDemo
//
//  Created by Raphael Fleischlin on 09.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "MDThirdViewController.h"

@interface MDThirdViewController ()

@end

@implementation MDThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backPressed:(UIButton*)sender
{
    [self dismissViewControllerAnimated:true completion:nil];
}
@end
