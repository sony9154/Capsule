#import "HSUHttpRequest.h"

// Class extension
@interface HSUHttpRequest ()
// You need property like NSURLSession or something. Write in .m means it is private.
@property (nonatomic) NSURLSessionConfiguration * config ;
@property (nonatomic) NSURLSession * session;

@end

@implementation HSUHttpRequest

- (void)sendWithURL:(NSURL *)URL {
    // Use some api to help you send request to server, and save data in property.
    // If you done, don't forget inform user by delegate
    self.config = [NSURLSessionConfiguration defaultSessionConfiguration];
    self.session = [NSURLSession sessionWithConfiguration:self.config];
    NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL:URL];
    request.HTTPMethod = @"POST";
    NSURLSessionDataTask * task = [self.session dataTaskWithRequest:request];
    [task resume];
    
}

- (void)httpRequestDidGetData:(HSUHttpRequest *)httpRequest {
    if(httpRequest.data) {
        httpRequest.delegate = self.delegate;
    }
}


@end










