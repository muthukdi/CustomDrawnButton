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

@property (weak, nonatomic) IBOutlet CustomButton *customButton;

- (IBAction)buttonPressed:(CustomButton *)sender;
- (IBAction)buttonReleased:(CustomButton *)sender;


@end
