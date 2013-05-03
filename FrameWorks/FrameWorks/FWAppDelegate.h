//
//  FWAppDelegate.h
//  FrameWorks
//
//  Created by Raphael Fleischlin on 03.05.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FWViewController;

@interface FWAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) FWViewController *viewController;

@end
