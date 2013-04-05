//
//  ELEditViewController.m
//  EditList
//
//  Created by Raphael Fleischlin on 05.04.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "ELEditViewController.h"

@interface ELEditViewController ()

@end

@implementation ELEditViewController

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

- (void)viewWillAppear:(BOOL)animated
{
    self.firstNameLabel.text = self.personData.firstName;
    self.lastNameLabel.text = self.personData.lastName;
    self.plzLabel.text = [NSString stringWithFormat:@"%i", self.personData.plz, nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)editButtonPressed:(UIButton *)sender
{
    self.personData.firstName = self.firstNameLabel.text;
    self.personData.lastName = self.lastNameLabel.text;
    self.personData.plz = self.plzLabel.text.intValue;
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"EditViewDismissed" object:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)editingDidEndOnExit:(UITextField *)sender
{
    [sender resignFirstResponder];
}

@end
