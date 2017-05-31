//
//  Contactlist.m
//  ContactList
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "Contactlist.h"

@implementation Contactlist

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.storedContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(Contact *)newContact
{
    [self.storedContacts addObject:newContact];
    NSLog(@"You added: %@", newContact);
}

-(void)displayContactList
{
    NSString *description = @"";
    
    for (Contact *contact in self.storedContacts)
    {
        description = [description stringByAppendingString:[NSString stringWithFormat:@"%lu: <%@> <%@>\n", (unsigned long)[self.storedContacts indexOfObject:contact], contact.name, contact.email]];
        NSLog(@"%@", description);
    }
}

@end
