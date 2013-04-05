//
//  ELEditViewController.h
//  EditList
//
//  Created by Raphael Fleischlin on 05.04.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CMPersonData.h"

@interface ELEditViewController : UIViewController

@property (strong, nonatomic) CMPersonData *personData;

@property (strong) IBOutlet UITextField *firstNameLabel;
@property (strong) IBOutlet UITextField *lastNameLabel;
@property (strong) IBOutlet UITextField *plzLabel;

- (IBAction)editButtonPressed:(UIButton*)sender;

@end
