//
//  ViewGlobales.m
//  GSO
//
//  Created by Joshua on 20/07/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

#import "ViewGlobales.h"
#import "AppDelegate.h"

@interface ViewGlobales ()
{
    AppDelegate * objGlobales;
}
@end

@implementation ViewGlobales
@synthesize tablita;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    objGlobales = [UIApplication sharedApplication].delegate;
    if ( ! objGlobales.arrGlobal) {
        objGlobales.arrGlobal = [[NSMutableArray alloc] init];
    }
    [tablita reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [objGlobales.arrGlobal count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * MyCellId = @"MyCellId";
    UITableViewCell * cell = [self.tablita dequeueReusableCellWithIdentifier:MyCellId];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyCellId];
    }
    [cell.textLabel setText:[objGlobales.arrGlobal objectAtIndex:[indexPath row]]];
    return cell;
}

@end
