//
//  ViewSingleton.h
//  GSO
//
//  Created by Joshua on 20/07/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewSingleton : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tablita;

@end
