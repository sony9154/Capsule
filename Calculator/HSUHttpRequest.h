//
//  HSUHttpRequest.h
//  test0703
//
//  Created by Peter Yo on 7月/4/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HSUHttpRequest;

@protocol HSUHttpRequestDelegate <NSObject>

@required
- (void)httpRequestDidGetResponseText:(id<HSUHttpRequest>)httpRequest;
@end

@protocol HSUHttpRequest

@required
- (void)sendWithURL:(NSURL *)URL;
- (void)setDelegate:(id<HSUHttpRequestDelegate>)delegate;
- (NSString *)getResponseText;
@optional
+ (void)sendWithURL:(NSURL *)URL handler:(void (^)(NSString * responseText))handler;
@end

@interface HSUHttpRequest : NSObject<HSUHttpRequest,HSUHttpRequestDelegate>



@end
