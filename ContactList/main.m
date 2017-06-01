//
//  main.m
//  ContactList
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "Contactlist.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [[InputCollector alloc] init]; // Call the InputCollector object
        Contactlist *contactList = [[Contactlist alloc] init];
        
        while (true)
        {
            NSString *initialInput = [inputCollector inputForPrompt:(@"What would you like to do?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n")];
            
            
            if ([initialInput isEqualToString:@"quit"]) // Exit function
            {
                NSLog(@"Goodbye");
                break;
            }
            else if ([initialInput isEqualToString:@"new"])
            {
                NSString *fullName = [inputCollector inputForPrompt:(@"What is your full name? ")];
                NSString *email = [inputCollector inputForPrompt:(@"What is your email address? ")];
                
                Contact *newContact = [[Contact alloc] initContact:fullName email:email];
                
                [contactList addContact:newContact];
            }
            else if ([initialInput isEqualToString:@"list"])
            {
                [contactList displayContactList];
            }
        }
        
        
    }
    return 0;
}
