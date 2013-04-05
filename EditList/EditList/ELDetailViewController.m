//
//  ELDetailViewController.m
//  EditList
//
//  Created by Raphael Fleischlin on 05.04.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "ELDetailViewController.h"
#import "ELEditViewController.h"

@interface ELDetailViewController ()
@end

@implementation ELDetailViewController

#pragma mark - Managing the detail item

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.editViewControler = [[ELEditViewController alloc] init];
    self.editViewControler.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
}

-(void) viewWillAppear:(BOOL)animated
{
    [self updateView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }
    return self;
}

- (IBAction)showEditViewPressed:(UIButton *)sender
{
    self.editViewControler.personData = self.personData;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateView) name:@"EditViewDismissed" object:nil];
    [self presentViewController:self.editViewControler animated:true completion:nil];
}

- (void) updateView
{
    self.firstNameLabel.text = self.personData.firstName;
    self.lastNameLabel.text = self.personData.lastName;
    self.plzLabel.text = [NSString stringWithFormat:@"%i", self.personData.plz, nil];
}
							
@end
