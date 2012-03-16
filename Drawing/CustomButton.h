//
//  CustomView.h
//  Drawing
//
//  Created by PointerWare Laptop 4 on 12-03-10.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

/*****************************************************************
 This button will only render itself correctly if it is initialized
 with a width of 130 and height of 100!!  Any other dimensions will
 affect the way the button is drawn as well as distort any icon
 images it contains.  I have not yet fixed this bug:)
 *****************************************************************/
@interface CustomButton : UIButton

@property (strong, nonatomic) UIColor *gradientColor;
@property (strong, nonatomic) UIImageView *iconView;
@property (strong, nonatomic) UIImage *icon;

- (void)drawPointAt:(int)x andAt:(int)y usingContext:(CGContextRef)context usingColor:(UIColor *)color;
- (void)addIcon:(UIImage *)icon;
- (void)becomeBigger;
- (void)becomeSmaller;

@end
