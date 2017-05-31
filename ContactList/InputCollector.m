//
//  InputCollector.m
//  ContactList
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector
- (NSString *)inputForPrompt:(NSString *)promptString // Takes in a single string parameter promptString and returns it
{
    // 255 unit long array of characters
    char input[255];
    NSLog(@"Enter a name: ");
    fgets(input, 255, stdin); // Limit inputs to max 255 characters
    
    NSString *inputString = [NSString stringWithUTF8String:input];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    NSLog(@"You entered: %@", inputString); // Print as an NSString
    
    return inputString;
}

- (void)displayContacts
{
    NSString *displayContactList = @"";
    
}

@end
