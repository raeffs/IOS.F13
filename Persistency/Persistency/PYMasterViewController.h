//
//  PYMasterViewController.h
//  Persistency
//
//  Created by Raphael Fleischlin on 26.04.13.
//  Copyright (c) 2013 Raphael Fleischlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PYDetailViewController;

#import <CoreData/CoreData.h>

@interface PYMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) PYDetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
