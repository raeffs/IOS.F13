//
//  ELMasterViewController.h
//  EditList
//
//  Created by Raphael Fleischlin on 05.04.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ELDetailViewController;

@interface ELMasterViewController : UITableViewController

@property (strong, nonatomic) ELDetailViewController *detailViewController;

@end
