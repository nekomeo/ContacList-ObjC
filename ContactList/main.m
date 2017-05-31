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
        
        char inputString [100];
        InputCollector *inputCollector = [[InputCollector alloc] init];
        Contactlist *newPerson = [[Contactlist alloc] init];
        NSString *usernameInput = [inputCollector inputForPrompt:@"Enter your username"];
        
        BOOL runAgain = true;
        while (runAgain)
        {
            NSString *initialInput = [inputCollector inputForPrompt:(@"What would you like to do?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n")];
            NSLog(@"%@", initialInput);
            
            if ([initialInput isEqualToString:@"quit"])
            {
                NSLog(@"Goodbye");
                return 0;
            }
            else if ([initialInput isEqualToString:@"new"])
            {
                NSString *fullName = [inputCollector inputForPrompt:(@"What is your full name? ")];
                NSString *email = [inputCollector inputForPrompt:(@"What is your email address? ")];
            }
            else if ([initialInput isEqualToString:@"list"])
            {
            }
        }
        
        
    }
    return 0;
}
