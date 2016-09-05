#import <Foundation/Foundation.h>

// Forward declaration
@class HSUHttpRequest;

// Delegate's protocol
@protocol HSUHttpRequestDelegate <NSObject>
@required
- (void)httpRequestDidGetData:(HSUHttpRequest *)httpRequest;
@end

// HSUHttpRequest's interface
@interface HSUHttpRequest : NSObject
@property (nonatomic) NSData * data; // Data get from server
@property (nonatomic, weak) id<HSUHttpRequestDelegate> delegate; // Use deletate to tell user you got data
- (void)sendWithURL:(NSURL *)URL; // Request to server
@end
