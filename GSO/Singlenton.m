//
//  Singlenton.m
//  GSO
//
//  Created by Joshua on 20/07/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

#import "Singlenton.h"

@implementation Singlenton


static Singlenton *objSinglenton;


+(id)sharedInstance {
    if (objSinglenton == nil) {
        objSinglenton = [[Singlenton alloc] init];
    }
    return objSinglenton;
}



@end
