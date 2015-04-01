//
//  NewItemViewController.h
//  Every.Do.Core
//
//  Created by Shahin on 2015-03-31.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoEntry.h"

@interface NewItemViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *neuTitle;
@property (weak, nonatomic) IBOutlet UITextView *neuDescription;
@property (weak, nonatomic) IBOutlet UISegmentedControl *neuPriority;
@property (assign, nonatomic) enum ToDoEntryPriority selectedPriority;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (strong, nonatomic) ToDoEntry *todoEntry;

@end
