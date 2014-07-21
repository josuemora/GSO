//
//  ViewObjectData.m
//  GSO
//
//  Created by Joshua on 20/07/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

#import "ViewObjectData.h"
#import "Singlenton.h"
#import "ObjectData.h"

@interface ViewObjectData ()
{
    Singlenton * objSinglenton;
    NSMutableArray * arrTmp;
}
@end

@implementation ViewObjectData
@synthesize tablita;


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    objSinglenton = [Singlenton sharedInstance];
    if ( ! objSinglenton.arrObjData) {
        objSinglenton.arrObjData = [[NSMutableArray alloc] init];
    }
    
    arrTmp = [[NSMutableArray alloc] init];
    for (ObjectData * objTmp in objSinglenton.arrObjData){
        [arrTmp addObject:objTmp.cadena];
    }
    [tablita reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [arrTmp count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * MyCellId = @"MyCellId";
    UITableViewCell * cell = [self.tablita dequeueReusableCellWithIdentifier:MyCellId];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyCellId];
    }
    [cell.textLabel setText:[arrTmp objectAtIndex:[indexPath row]]];
    return cell;
}

@end
