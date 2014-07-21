//
//  ctrl_regreso.m
//  GSO
//
//  Created by Joshua on 20/07/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

#import "ctrl_regreso.h"

@implementation ctrl_regreso

-(void) perform{
    UIViewController * source = (UIViewController * )self.sourceViewController;
    [source.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
@end
