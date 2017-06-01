//
//  InputCollector.h
//  ContactList
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property NSMutableArray *inputArray;

- (NSString *)inputForPrompt:(NSString *)promptString;

@end
