//
//  CMViewController.m
//  CourseMembers
//
//  Created by Raphael Fleischlin on 28.02.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "CMViewController.h"
#import "CMDataProvider.h"

@interface CMViewController ()

@end

@implementation CMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    label.text = @"Teilnehmer iOS Kurs";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    CMDataProvider *provider = [[CMDataProvider alloc] init];
    for (int index = 0; index < provider.memberNames.count; index++) {
        [self addLabelForName:provider.memberNames[index] atPosition:index];
    }
}

- (void)addLabelForName:(NSString*)text atPosition:(int)index
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 50 + index * 25, 320, 25)];
    label.text = text;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
