//
//  CMAppDelegate.h
//  CourseMembers
//
//  Created by Raphael Fleischlin on 28.02.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CMViewController;

@interface CMAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CMViewController *viewController;

@end
