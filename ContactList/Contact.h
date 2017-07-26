//
//  Contact.h
//  ContactList
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *email;

- (instancetype)initContact:(NSString *)name email:(NSString *)email; // Stores contacts and emails

@end
