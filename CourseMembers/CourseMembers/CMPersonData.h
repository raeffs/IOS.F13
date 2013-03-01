//
//  CMPersonData.h
//  CourseMembers
//
//  Created by Raphael Fleischlin on 01.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMPersonData : NSObject

@property(strong) NSString* firstName;
@property(strong) NSString* lastName;
@property int plz;

- (id) initWithFirstName:(NSString*)first lastName:(NSString*)last andPlz:(int)plz;

@end
