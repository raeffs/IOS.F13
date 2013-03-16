//
//  OTTestProtocol.h
//  ObjC-Test
//
//  Created by Raphael Fleischlin on 16.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OTTestProtocol <NSObject>

@required
- (void) doThisRequiredThing;

@optional
- (void) doThisOptionalThing;

@end
