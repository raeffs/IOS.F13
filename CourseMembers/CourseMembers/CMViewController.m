//
//  CMViewController.m
//  CourseMembers
//
//  Created by Raphael Fleischlin on 28.02.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "CMViewController.h"

@interface CMViewController ()

@end

@implementation CMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    label.text = @"Teilnehmer iOS Kurs";
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
