//
//  NSString+OTMyStringCategory.h
//  ObjC-Test
//
//  Created by Raphael Fleischlin on 16.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OTTestProtocol.h"

@interface NSString (OTMyStringCategory) <OTTestProtocol>

- (void) myNewStringMethod;

@end
