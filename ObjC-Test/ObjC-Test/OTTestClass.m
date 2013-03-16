//
//  OTTestClass.m
//  ObjC-Test
//
//  Created by Raphael Fleischlin on 16.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "OTTestClass.h"

@implementation OTTestClass

- (id) init
{
    if (self = [super init])
    {
        self.array = [[NSArray alloc] initWithObjects:@"", nil];
        [self.array release];
    }
    return self;
}

- (void) dealloc
{
    self.array = nil;
    [super dealloc];
}

- (void) doThisRequiredThing
{
    
}

@end
