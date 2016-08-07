//
//  Storage.m
//  Calculator
//
//  Created by Peter Yo on 8月/6/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import "Storage.h"

@interface Storage()

@property (nonatomic) NSMutableArray *contactInfo;

@end


@implementation Storage

-(instancetype) init;
{
    self = [super init];
    if (self) {
        _contactInfo = [NSMutableArray new];
    }
    return  self;
}

/*
-(void)addContactWithName:(NSString *)name phoneNumber:(NSString *)number {
    self.contactInfo[name] = number;
}*/

-(void) addContactWithName:(NSString*)name phoneNumber:(NSString*)number email:(NSString *)email {
    
    NSArray * personInfo = @[name,number,email];
    [self.contactInfo addObject:personInfo];
    
}

-(NSArray*) contacts {
    return self.contactInfo;
}

-(NSArray*) contactFromName:(NSString*)name {
    
    for (NSArray * array in self.contactInfo) {
        if([array[0] isEqualToString:name]) {
            return array;
        }

    }
    return nil;
}

-(void) insertContactWithIndex:(NSInteger)index name:(NSString*)name phoneNumber:(NSString*)number email:(NSString *)email {
    
    NSArray * personInfo = @[name,number,email];
    [self.contactInfo insertObject:personInfo atIndex:index];
    
}


-(void) removeContactWithIndex:(NSInteger)index {
    [self.contactInfo removeObjectAtIndex:index];
}


@end









