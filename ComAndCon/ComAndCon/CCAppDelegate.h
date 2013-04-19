//
//  CCAppDelegate.h
//  ComAndCon
//
//  Created by Raphael Fleischlin on 19.04.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CCViewController;

@interface CCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CCViewController *viewController;

@end
