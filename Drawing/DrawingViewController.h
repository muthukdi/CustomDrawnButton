//
//  DrawingViewController.h
//  Drawing
//
//  Created by PointerWare Laptop 4 on 12-03-10.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomButton.h"

@interface DrawingViewController : UIViewController

@property (weak, nonatomic) IBOutlet CustomButton *customButton1;
@property (weak, nonatomic) IBOutlet CustomButton *customButton2;
@property (weak, nonatomic) IBOutlet CustomButton *customButton3;
@property (weak, nonatomic) IBOutlet CustomButton *customButton4;

- (IBAction)buttonPressed:(CustomButton *)sender;
- (IBAction)buttonReleased:(CustomButton *)sender;
- (void)createButtons;

@end
