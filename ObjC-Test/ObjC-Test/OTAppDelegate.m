//
//  OTAppDelegate.m
//  ObjC-Test
//
//  Created by Raphael Fleischlin on 16.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import "OTAppDelegate.h"

#import "OTViewController.h"
#import "OTTestClass.h"

@implementation OTAppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.viewController = [[[OTViewController alloc] initWithNibName:@"OTViewController" bundle:nil] autorelease];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    [self doSelectorTesting];
    
    // the loop :)
    while (YES) {
        NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
        for (int i = 0; i < 1000; i++) {
            OTTestClass * testclass = [[OTTestClass alloc] init];
            [testclass autorelease];
            [NSThread sleepForTimeInterval:0.005];
        }
        [pool drain];
    }
    
    return YES;
}

- (void) doSelectorTesting
{
    NSString * object1 = @"Test String";
    [self testSelector:@"foo" onObject:object1];
    [self testSelector:@"doThisRequiredThing" onObject:object1];
    [self testSelector:@"doThisOptionalThing" onObject:object1];
    [self testSelector:@"myNewStringMethod" onObject:object1];
    
    OTTestClass * object2 = [[OTTestClass alloc] init];
    [self testSelector:@"foo" onObject:object2];
    [self testSelector:@"doThisRequiredThing" onObject:object2];
    [self testSelector:@"doThisOptionalThing" onObject:object2];
    [self testSelector:@"myNewStringMethod" onObject:object2];
    
    UIView * object3 = [[UIView alloc] init];
    [self testSelector:@"foo" onObject:object3];
    [self testSelector:@"doThisRequiredThing" onObject:object3];
    [self testSelector:@"doThisOptionalThing" onObject:object3];
    [self testSelector:@"myNewStringMethod" onObject:object3];
}

- (void) testSelector:(NSString *)selectorName onObject:(id<NSObject>)object
{
    SEL selector = NSSelectorFromString(selectorName);
    if ([object respondsToSelector:selector])
    {
        NSLog(@"'%s' does understand '%@'", object_getClassName(object) , selectorName, nil);
    }
    else
    {
        NSLog(@"'%s' does NOT understand '%@'", object_getClassName(object) , selectorName, nil);
    }
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
