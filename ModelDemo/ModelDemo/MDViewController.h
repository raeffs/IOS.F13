//
//  MDViewController.h
//  ModelDemo
//
//  Created by Raphael Fleischlin on 08.03.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MDViewController : UIViewController

@property int showCounter;

@property(strong) IBOutlet UILabel * counterLabel;

@property(strong) UIViewController * secondViewController;

@property(strong) UIViewController * thirdViewController;

- (IBAction)showSecondViewPressed:(UIButton*)sender;

- (IBAction)showThirdViewPressed:(UIButton*)sender;

@end
