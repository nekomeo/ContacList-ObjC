//
//  Contactlist.m
//  ContactList
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "Contactlist.h"

@interface Contactlist()

@end

@implementation Contactlist

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.storedContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(Contact *)newContact
{
//    [_storedContacts addObject:newContact];
    [self.storedContacts addObject:newContact];
    NSLog(@"You added: %@ - %@", newContact.name, newContact.email);
}

-(void)displayContactList
{
    for (Contact *contact in self.storedContacts)
    {
        NSString *description = [NSString stringWithFormat:@"%lu: <%@>\n", (unsigned long)[self.storedContacts indexOfObject:contact], contact.name];
        NSLog(@"%@", description);
    }
}

@end
