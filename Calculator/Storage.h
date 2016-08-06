//
//  Storage.h
//  Calculator
//
//  Created by Peter Yo on 8月/6/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Storage : NSObject

-(void) saveContact:(NSString*)name phoneNumber:(NSString*)number;
-(NSDictionary*) loadContactList;
-(NSDictionary*) loadOnePerson:(NSString*)name;

@end
