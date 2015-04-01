//
//  NewToDoViewController.m
//  Every.Do.Core
//
//  Created by Shahin on 2015-03-31.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "NewToDoViewController.h"

@interface NewToDoViewController ()



@end

@implementation NewToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDate *date;
    
    if (self.todoEntry != nil)
    {
        self.neuTitle.text = self.todoEntry.title;
        self.neuDescription.text = self.todoEntry.itemDescription;
        self.neuPriority.selectedSegmentIndex = self.todoEntry.priority;
        date = [NSDate dateWithTimeIntervalSince1970:self.todoEntry.date];
    }
    else {
        self.neuPriority.selectedSegmentIndex = ToDoEntryPriorityNone;
        date = [NSDate date];
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    self.dateLabel.text = [dateFormatter stringFromDate:date];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dismissSelf {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField andTextView:(UITextView *)textView
{
    if(textField.returnKeyType==UIReturnKeyNext) {
        UIView *next = [[textView superview] viewWithTag:textView.tag+1];
        [next becomeFirstResponder];
    } else if (textView.returnKeyType==UIReturnKeyDone) {
        [textField resignFirstResponder];
    }
    return YES;
}

@end
