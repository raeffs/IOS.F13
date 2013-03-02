//
//  CMViewController.m
//  CourseMembers
//
//  Created by Raphael Fleischlin on 28.02.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "CMViewController.h"
#import "CMDataProvider.h"
#import "CMPersonData.h"

@interface CMViewController ()

@end

@implementation CMViewController

const bool USE_PERSON_DATA = NO;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    label.text = @"Teilnehmer iOS Kurs";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor orangeColor];
    label.backgroundColor = [UIColor blackColor];
    [self.view addSubview:label];
    
    CMDataProvider *provider = [CMDataProvider sharedDataProvider];
    if (USE_PERSON_DATA)
    {
        for (int index = 0; index < [provider.memberPersons count]; index++)
        {
            [self addLabelForPerson:provider.memberPersons[index] atPosition:index];
        }
    }
    else
    {
        for (int index = 0; index < [provider.memberNames count]; index++)
        {
            [self addLabelForName:provider.memberNames[index] atPosition:index];
        }
    }
}

- (void)addLabelForName:(NSString*)text atPosition:(int)position
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 50 + position * 25, 320, 25)];
    label.text = text;
    switch (position % 3) {
        case 0:
            label.textColor = [UIColor redColor];
            break;
        case 1:
            label.textColor = [UIColor blueColor];
            break;
        case 2:
            label.textColor = [UIColor greenColor];
            break;
    }
    [self.view addSubview:label];
}

- (void)addLabelForPerson:(CMPersonData*)person atPosition:(int)position
{
    UILabel *labelFirst = [[UILabel alloc] initWithFrame:CGRectMake(10, 50 + position * 25, 100, 25)];
    UILabel *labelLast = [[UILabel alloc] initWithFrame:CGRectMake(110, 50 + position * 25, 100, 25)];
    UILabel *labelPlz = [[UILabel alloc] initWithFrame:CGRectMake(210, 50 + position * 25, 100, 25)];
    
    labelFirst.text = person.firstName;
    labelLast.text = person.lastName;
    labelPlz.text = [NSString stringWithFormat:@"%i", person.plz];
    
    labelPlz.textAlignment = NSTextAlignmentRight;
    
    labelFirst.textColor = [UIColor greenColor];
    labelLast.textColor = [UIColor greenColor];
    labelPlz.textColor = [UIColor greenColor];
    
    labelFirst.backgroundColor = [UIColor blackColor];
    labelLast.backgroundColor = [UIColor blackColor];
    labelPlz.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:labelFirst];
    [self.view addSubview:labelLast];
    [self.view addSubview:labelPlz];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
