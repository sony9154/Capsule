//
//  ViewController.h
//  CapsuleSample
//
//  Created by Peter Yo on 8月/10/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HSUHttpRequest.h"

@interface ViewController : UIViewController<HSUHttpRequestDelegate>

@property (nonatomic) NSData * data;

@end

