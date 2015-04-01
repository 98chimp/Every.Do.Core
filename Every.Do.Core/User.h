//
//  User.h
//  Every.Do.Core
//
//  Created by Shahin on 2015-03-31.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface User : NSManagedObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) NSString *password;

@end
