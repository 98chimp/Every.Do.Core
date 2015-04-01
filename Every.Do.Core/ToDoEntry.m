//
//  ToDoEntry.m
//  Every.Do.Core
//
//  Created by Shahin on 2015-03-31.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoEntry.h"

@implementation ToDoEntry

@dynamic title;
@dynamic itemDescription;
@dynamic isCompleted;
@dynamic priority;
@dynamic date;

- (NSString *)dateCreated
{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:self.date];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM yyyy"];
    
    return [dateFormatter stringFromDate:date];
}

@end
