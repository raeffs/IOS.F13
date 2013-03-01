//
//  CMDataProvider.m
//  CourseMembers
//
//  Created by Raphael Fleischlin on 01.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "CMDataProvider.h"

@implementation CMDataProvider

- (id)init {
    if (self = [super init]) {
        _memberNames = [NSArray arrayWithObjects:@"Peter", @"Gabriela", @"Hans", @"Martin", nil];
    }
    return self;
}

@end
