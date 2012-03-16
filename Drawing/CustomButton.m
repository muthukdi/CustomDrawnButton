//
//  CustomView.m
//  Drawing
//
//  Created by PointerWare Laptop 4 on 12-03-10.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation CustomButton

@synthesize gradientColor = _gradientColor;
@synthesize iconView = _iconView;
@synthesize icon = _icon;

- (UIColor *)gradientColor
{
    if (_gradientColor) return _gradientColor;
    else
    {
        _gradientColor = [UIColor colorWithRed:0 green:0 blue:255 alpha:1];
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
    self.layer.borderColor = self.gradientColor.CGColor;
    self.layer.borderWidth = 1.0;
    self.layer.cornerRadius = 10.0f;
    self.layer.masksToBounds = YES;
    self.layer.borderWidth = 1.0f;
}
- (void)drawPointAt:(int)x andAt:(int)y usingContext:(CGContextRef)context usingColor:(UIColor *)color
{
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context,CGRectMake(x, y, 1, 1));
}
- (void)addIcon:(UIImage *)icon
{
    self.icon = icon;
    CGFloat width = self.icon.size.width;
    CGFloat height = self.icon.size.height;
    self.iconView = [[UIImageView alloc] initWithImage:self.icon];
    self.iconView.frame = CGRectMake((130-width)/2,10,width,height);
    [self addSubview:self.iconView];
}
- (void)becomeBigger
{
    self.gradientColor = [UIColor redColor];
    CGFloat width = self.icon.size.width;
    CGFloat height = self.icon.size.height;
    CGFloat buttonX = self.frame.origin.x;
    CGFloat buttonY = self.frame.origin.y;
    self.frame = CGRectMake(buttonX-2,buttonY-2,134,104);
    self.iconView.frame = CGRectMake((130-width)/2,10,width+4,height+4);
    [self setNeedsDisplay];
}
- (void)becomeSmaller
{
    self.gradientColor = [UIColor blueColor];
    CGFloat width = self.icon.size.width;
    CGFloat height = self.icon.size.height;
    CGFloat buttonX = self.frame.origin.x;
    CGFloat buttonY = self.frame.origin.y;
    self.frame = CGRectMake(buttonX+2,buttonY+2,130,100);
    self.iconView.frame = CGRectMake((130-width)/2,10,width,height);
    [self setNeedsDisplay];
}

@end
