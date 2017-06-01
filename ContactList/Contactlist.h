//
//  Contactlist.h
//  ContactList
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface Contactlist : NSObject

@property NSMutableArray *storedContacts;

-(void)addContact:(Contact *)newContact;
-(void)displayContactList;

@end
