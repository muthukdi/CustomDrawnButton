//
//  DrawingViewController.m
//  Drawing
//
//  Created by PointerWare Laptop 4 on 12-03-10.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DrawingViewController.h"

@implementation DrawingViewController
@synthesize customButton1 = _customButton1;
@synthesize customButton2 = _customButton2;
@synthesize customButton3 = _customButton3;
@synthesize customButton4 = _customButton4;


- (void)viewDidLoad
{
    [self createButtons];
    [self.view addSubview:self.customButton1];
    [self.view addSubview:self.customButton2];
    [self.view addSubview:self.customButton3];
    [self.view addSubview:self.customButton4];
}

- (IBAction)buttonPressed:(CustomButton *)sender
{
    [sender becomeBigger];
}

- (IBAction)buttonReleased:(CustomButton *)sender
{
    [sender becomeSmaller];
}
- (void)createButtons
{
    [self.customButton1 setFrame:CGRectMake(20,112,130,100)];
    [self.customButton1 addIcon:[UIImage imageNamed:@"picture-17747.png"]];
    [self.customButton2 setFrame:CGRectMake(170,112,130,100)];
    [self.customButton2 addIcon:[UIImage imageNamed:@"Mailbox.png"]];
    [self.customButton3 setFrame:CGRectMake(20,236,130,100)];
    [self.customButton3 addIcon:[UIImage imageNamed:@"india.png"]];
    [self.customButton4 setFrame:CGRectMake(170,236,130,100)];
    [self.customButton4 addIcon:[UIImage imageNamed:@"canada.png"]];
}

@end
