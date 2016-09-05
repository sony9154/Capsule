#import "HSUHttpRequest.h"

// Class extension
@interface HSUHttpRequest ()
// You need property like NSURLSession or something. Write in .m means it is private.
@property (nonatomic) NSURLSessionConfiguration * defaultConfig;
@property (nonatomic) NSURLSession * session;

@end

@implementation HSUHttpRequest

- (void)sendWithURL:(NSURL *)URL {
    // Use some api to help you send request to server, and save data in property.
    // If you done, don't forget inform user by delegate
    NSURLRequest * request = [[NSURLRequest alloc]initWithURL:URL];
    self.defaultConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
//    self.session = [NSURLSession sessionWithConfiguration:self.defaultConfig delegate:[self.delegate httpRequestDidGetData:self] delegateQueue:[NSOperationQueue mainQueue]];為什麼不能delegate不能那樣用？？？
    self.session = [NSURLSession sessionWithConfiguration:self.defaultConfig];
    NSURLSessionDataTask * task = [self.session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"Request completion~!");
        if (!error) {
            self.data = data;
        } else {
            NSLog(@"error : %@", error.localizedFailureReason);
        }
        
    }];
    [task resume];
    
    if ([self.delegate respondsToSelector:@selector(httpRequestDidGetData:)]) {
        [self.delegate httpRequestDidGetData:self];
    }
    
}

@end










