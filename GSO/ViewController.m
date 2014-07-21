//
//  ViewController.m
//  GSO
//
//  Created by Joshua on 20/07/14.
//  Copyright (c) 2014 Joshua. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Singlenton.h"
#import "ObjectData.h"


@interface ViewController ()
/*
 Para agregar variables se deben agregar {} dentro del interface en el archivo .m
 Por default las variables son protected
 */
{
    @public
    
    @private
    
        AppDelegate * objGlobales;
        Singlenton * objSinglenton;
        ObjectData * objData;

    
    
    @protected
    
    @package
}

@end

@implementation ViewController
@synthesize txt_valor;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    objGlobales = [UIApplication sharedApplication].delegate;
    if ( ! objGlobales.arrGlobal) {
        objGlobales.arrGlobal = [[NSMutableArray alloc] init];
    }
    objSinglenton = [Singlenton sharedInstance];
    if ( ! objSinglenton.arrSinglenton) {
        objSinglenton.arrSinglenton = [[NSMutableArray alloc] init];
    }
    if ( ! objSinglenton.arrObjData) {
        objSinglenton.arrObjData = [[NSMutableArray alloc] init];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn_agregar:(id)sender {
    if (![txt_valor.text isEqualToString:@""]) {
        
        //NSLog(@" %@",txt_valor.text);
    
        if ([[sender currentTitle] isEqualToString:@"En Globales"]) {
            
            [objGlobales.arrGlobal addObject:txt_valor.text];
        }
        if ([[sender currentTitle] isEqualToString:@"En Singleton"]) {
            
            [objSinglenton.arrSinglenton addObject:txt_valor.text];
        }

        if ([[sender currentTitle] isEqualToString:@"En ObjectData"]) {
            objData = [[ObjectData alloc] init];
            objData.cadena = txt_valor.text;
            [objSinglenton.arrObjData addObject:objData];
        }

        
        txt_valor.text = @"";
    
        [self Alerta:[sender currentTitle] Mensaje:@"Agregado Satisfactoriamente!!!" TextoBtnCancel:@"Ok"];
    }
}

-(void)Alerta:(NSString *)titulo Mensaje:(NSString *)mensaje TextoBtnCancel:(NSString *)txtbtnCancel{
    [[[UIAlertView alloc] initWithTitle:titulo message:mensaje delegate:self cancelButtonTitle:txtbtnCancel otherButtonTitles:nil] show];
}

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}

@end
