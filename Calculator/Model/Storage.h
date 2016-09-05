//
//  Storage.h
//  Calculator
//
//  Created by Peter Yo on 8月/6/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YOContact.h"

@interface Storage : NSObject

-(void) addContactWithContact:(YOContact*)contact;
-(NSArray<YOContact*> *) contacts;
-(YOContact*) contactFromName:(NSString*)name;
-(void) insertContactWithIndex:(NSInteger)index contact:(YOContact*)contact;
-(void) removeContactWithIndex:(NSInteger)index ;

@end





