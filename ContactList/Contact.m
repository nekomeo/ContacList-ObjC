//
//  Contact.m
//  ContactList
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "Contact.h"

@implementation Contact
- (instancetype)initContact:(NSString *)name email:(NSString *)email // Stores contacts and emails
{
    self = [super init];
    if (self)
    {
        self.name = name;
        self.email = email;
    }
    return self;
}

@end
