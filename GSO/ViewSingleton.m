//
//  ViewSingleton.m
//  GSO
//
//  Created by Joshua on 20/07/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

#import "ViewSingleton.h"
#import "Singlenton.h"

@interface ViewSingleton ()
{
    Singlenton * objSinglenton;
}
@end

@implementation ViewSingleton
@synthesize tablita;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    objSinglenton = [Singlenton sharedInstance];
    if ( ! objSinglenton.arrSinglenton) {
        objSinglenton.arrSinglenton = [[NSMutableArray alloc] init];
    }
    [tablita reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [objSinglenton.arrSinglenton count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * MyCellId = @"MyCellId";
    UITableViewCell * cell = [self.tablita dequeueReusableCellWithIdentifier:MyCellId];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyCellId];
    }
    [cell.textLabel setText:[objSinglenton.arrSinglenton objectAtIndex:[indexPath row]]];
    return cell;
}

@end
