//
//  UIDevice+DLCOrientation.m
//  DLCMobilePlayer
//
//  Created by Linzh on 10/30/16.
//  Copyright © 2016 Daniel. All rights reserved.
//

#import "UIDevice+DLCOrientation.h"

@implementation UIDevice (DLCOrientation)
+ (void)dlc_setOrientation:(UIInterfaceOrientation)orientation {
    if (orientation == [UIApplication sharedApplication].statusBarOrientation) {
        return;
    }
    if ([[self currentDevice] valueForKey:@"orientation"]) {
        [[self currentDevice] setValue:@(orientation) forKey:@"orientation"];
    }
}
@end
