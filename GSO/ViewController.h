//
//  ViewController.h
//  GSO
//
//  Created by Joshua on 20/07/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txt_valor;


- (IBAction)btn_agregar:(id)sender;

-(void)Alerta:(NSString *)titulo Mensaje:(NSString*)mensaje TextoBtnCancel:(NSString*) txtbtnCancel;


-(IBAction)textFieldReturn:(id)sender;

@end
