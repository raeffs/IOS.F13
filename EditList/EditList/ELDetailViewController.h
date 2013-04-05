//
//  ELDetailViewController.h
//  EditList
//
//  Created by Raphael Fleischlin on 05.04.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CMPersonData.h"
#import "ELEditViewController.h"

@interface ELDetailViewController : UIViewController

@property (strong, nonatomic) CMPersonData *personData;

@property (strong) IBOutlet UILabel *firstNameLabel;
@property (strong) IBOutlet UILabel *lastNameLabel;
@property (strong) IBOutlet UILabel *plzLabel;

- (IBAction)showEditViewPressed:(UIButton*)sender;
- (void) updateView;

@property(strong) ELEditViewController * editViewControler;

@end
