//
//  IBDAppDelegate.h
//  IB-Demo
//
//  Created by Raphael Fleischlin on 02.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IBDViewController;

@interface IBDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) IBDViewController *viewController;

@end
