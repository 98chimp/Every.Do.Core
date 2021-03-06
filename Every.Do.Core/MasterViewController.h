//
//  MasterViewController.h
//  Every.Do.Core
//
//  Created by Shahin on 2015-03-31.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AppDelegate.h"
#import "DetailViewController.h"
#import "NewItemViewController.h"
#import "ToDoTableViewCell.h"
#import "ToDoEntry.h"
#import "User.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) DetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@end

