//
//  CustomView.h
//  Drawing
//
//  Created by PointerWare Laptop 4 on 12-03-10.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomButton : UIButton

@property (strong, nonatomic) UIColor *gradientColor;

- (void)drawPointAt:(int)x andAt:(int)y usingContext:(CGContextRef)context usingColor:(UIColor *)color;
- (void)drawBorder:(UIColor *)color usingContext:(CGContextRef)context;

@end
