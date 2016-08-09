//
//  Storage.h
//  Calculator
//
//  Created by Peter Yo on 8月/6/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Storage : NSObject

-(void) addContactWithName:(NSString*)name phoneNumber:(NSString*)number email:(NSString *)email;

-(NSArray*) contacts;

-(NSArray*) contactFromName:(NSString*)name;

-(void) insertContactWithIndex:(NSInteger)index name:(NSString*)name phoneNumber:(NSString*)number email:(NSString *)email;

-(void) removeContactWithIndex:(NSInteger)index ;



@end





