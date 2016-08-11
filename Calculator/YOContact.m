//
//  YOContact.m
//  Calculator
//
//  Created by Peter Yo on 8月/9/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import "YOContact.h"

@implementation YOContact

-(id)initWithName:(NSString *)name phone:(NSString *)phoneNumber email:(NSString *)email {
    
    if(self = [super init])
    {
        [self setName:name];
        [self setPhoneNumber:phoneNumber];
        [self setEmail:email];
    }
    return self;
    
}

@end
