//
//  CMPersonData.m
//  CourseMembers
//
//  Created by Raphael Fleischlin on 01.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "CMPersonData.h"

@implementation CMPersonData

- (id) initWithFirstName:(NSString *)first lastName:(NSString *)last andPlz:(int)plz
{
    if (self = [super init])
    {
        self.firstName = first;
        self.lastName = last;
        self.plz = plz;
    }
    return self;
}

- (NSString*) getDisplayName
{
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName, nil];
}

@end
