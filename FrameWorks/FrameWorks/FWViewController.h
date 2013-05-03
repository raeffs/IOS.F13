//
//  FWViewController.h
//  FrameWorks
//
//  Created by Raphael Fleischlin on 03.05.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>

@interface FWViewController : UIViewController <ABPeoplePickerNavigationControllerDelegate>

@property(strong) IBOutlet UILabel * firstnameLabel;
@property(strong) IBOutlet UILabel * lastnameLabel;

- (IBAction)selectPeoplePressed:(UIButton*)sender;

@end
