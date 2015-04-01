//
//  ToDoEntry.h
//  Every.Do.Core
//
//  Created by Shahin on 2015-03-31.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ENUM(int16_t, ToDoEntryPriority) {
    ToDoEntryPriorityNone = 0,
    ToDoEntryPriorityNormal = 1,
    ToDoEntryPriorityImportant = 2,
    ToDoEntryPriorityVeryImportant = 3
};

@interface ToDoEntry : NSManagedObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *itemDescription;
@property (assign, nonatomic) bool isCompleted;
@property (assign, nonatomic) int16_t priority;
@property (nonatomic) NSTimeInterval date;
@property (readonly, nonatomic) NSString *dateCreated;

@end
