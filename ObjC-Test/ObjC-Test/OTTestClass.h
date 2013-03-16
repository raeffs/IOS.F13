//
//  OTTestClass.h
//  ObjC-Test
//
//  Created by Raphael Fleischlin on 16.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OTTestProtocol.h"

@interface OTTestClass : NSObject <OTTestProtocol>

@property int i;

@property float f;

@property (retain) NSArray *array;

@end
