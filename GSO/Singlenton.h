//
//  Singlenton.h
//  GSO
//
//  Created by Joshua on 20/07/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singlenton : NSObject

@property (strong, nonatomic) NSMutableArray *arrSinglenton;
@property (strong, nonatomic) NSMutableArray *arrObjData;

+(id)sharedInstance;

@end
