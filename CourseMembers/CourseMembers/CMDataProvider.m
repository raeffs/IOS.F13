//
//  CMDataProvider.m
//  CourseMembers
//
//  Created by Raphael Fleischlin on 01.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "CMDataProvider.h"
#import "CMPersonData.h"

@implementation CMDataProvider

static CMDataProvider* sharedDataProvider;

- (id)init {
    if (self = [super init])
    {
        self.memberNames = [NSArray arrayWithObjects:@"Peter", @"Gabriela", @"Hans", @"Martin", nil];
        self.memberPersons = [NSArray arrayWithObjects:
                              [[CMPersonData alloc] initWithFirstName:@"Peter" lastName:@"Muster" andPlz:1234],
                              [[CMPersonData alloc] initWithFirstName:@"Gabriela" lastName:@"Bach" andPlz:4321],
                              [[CMPersonData alloc] initWithFirstName:@"Hannes" lastName:@"Foo" andPlz:9876],
                              [[CMPersonData alloc] initWithFirstName:@"Martin" lastName:@"Walser" andPlz:6789],
                              [[CMPersonData alloc] initWithFirstName:@"Franz" lastName:@"Karl" andPlz:6000],
                              nil];
    }
    return self;
}

+ (CMDataProvider*) sharedDataProvider
{
    if (sharedDataProvider == NULL)
    {
        sharedDataProvider = [[CMDataProvider alloc] init];
    }
    return sharedDataProvider;
}

@end
