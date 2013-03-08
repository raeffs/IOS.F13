//
//  MDAppDelegate.h
//  ModelDemo
//
//  Created by Raphael Fleischlin on 08.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MDViewController;

@interface MDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MDViewController *viewController;

@end
