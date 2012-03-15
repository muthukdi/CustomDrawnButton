//
//  DrawingViewController.m
//  Drawing
//
//  Created by PointerWare Laptop 4 on 12-03-10.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DrawingViewController.h"

@implementation DrawingViewController
@synthesize customButton = _customButton;

- (void)viewDidLoad
{
    self.customButton.frame = CGRectMake(95,100,130,100);
    self.customButton.gradientColor = [UIColor blueColor];
    UIImage *buttonIcon = [UIImage imageNamed:@"picture-17747.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:buttonIcon];
    imageView.frame = CGRectMake(40,10,50,50);
    [self.customButton addSubview:imageView];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:self.customButton];
}

- (IBAction)buttonPressed:(CustomButton *)sender
{
    self.customButton.gradientColor = [UIColor redColor];
    [self.customButton setNeedsDisplay];
}

- (IBAction)buttonReleased:(CustomButton *)sender
{
    self.customButton.gradientColor = [UIColor blueColor];
    [self.customButton setNeedsDisplay];
}

@end
