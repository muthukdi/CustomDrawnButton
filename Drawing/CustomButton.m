//
//  CustomView.m
//  Drawing
//
//  Created by PointerWare Laptop 4 on 12-03-10.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

@synthesize gradientColor = _gradientColor;

- (UIColor *)gradientColor
{
    if (_gradientColor) return _gradientColor;
    else
    {
        _gradientColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
        return _gradientColor;
    }
}
- (void)drawRect:(CGRect)rect
{
    const CGFloat* components = CGColorGetComponents(self.gradientColor.CGColor);
    CGContextRef context = UIGraphicsGetCurrentContext();
    for (int y = 0; y < self.frame.size.height; y++)
    {
        UIColor *lineColor = [UIColor colorWithRed:components[0] green:components[1] blue:components[2] alpha:1.0-(y/100.0)];
        for (int x = 0; x < self.frame.size.width; x++)
        {
            [self drawPointAt:x andAt:y usingContext:context usingColor:lineColor];
        }
    }
    [self drawBorder:self.gradientColor usingContext:context];
}
- (void)drawBorder:(UIColor *)color usingContext:(CGContextRef)context
{
    for (int x = 0; x < self.frame.size.width; x++)
    {
        [self drawPointAt:x andAt:0 usingContext:context usingColor:color];
    }
    for (int x = 0; x < self.frame.size.width; x++)
    {
        [self drawPointAt:x andAt:self.frame.size.height-1 usingContext:context usingColor:color];
    }
    for (int y = 0; y < self.frame.size.height; y++)
    {
        [self drawPointAt:0 andAt:y usingContext:context usingColor:color];
    }
    for (int y = 0; y < self.frame.size.height; y++)
    {
        [self drawPointAt:self.frame.size.width-1 andAt:y usingContext:context usingColor:color];
    }
}
- (void)drawPointAt:(int)x andAt:(int)y usingContext:(CGContextRef)context usingColor:(UIColor *)color
{
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context,CGRectMake(x, y, 1, 1));
}

@end
