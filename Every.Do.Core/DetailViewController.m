//
//  DetailViewController.m
//  Every.Do.Core
//
//  Created by Shahin on 2015-03-31.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "DetailViewController.h"
#import "ToDoEntry.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(ToDoEntry *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem && self.isViewLoaded && self.view.window) {
        self.detailTitleLabel.text = self.detailItem.title;
        self.detailDescriptionLabel.text = self.detailItem.itemDescription;
        switch (self.detailItem.priority) {
            case 0:
                self.detailPriorityLabel.text = @"";
                break;
            case 1:
                self.detailPriorityLabel.text = @"!";
                break;
            case 2:
                self.detailPriorityLabel.text = @"!!";
                break;
            case 3:
                self.detailPriorityLabel.text = @"!!!";
                break;
            default:
                self.detailPriorityLabel.text = @"";
                break;
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
