//
//  HypnosisView.m
//  Hypnositer
//
//  Created by Robert Ruttenberg on 12/12/14.
//  Copyright (c) 2014 Robert Ruttenberg. All rights reserved.
//

#import "HypnosisView.h"

@interface HypnosisView ()

@property (strong, nonatomic) UIColor *circleColor;

@end


@implementation HypnosisView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All BNRHypnosisViews start with a clear background color
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)setCircleColor:(UIColor *)circleColor{
    
    _circleColor = circleColor;
    [self setNeedsDisplay];

}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"%@ was touched", self);
    
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    
    self.circleColor = randomColor;
}

- (void)drawRect:(CGRect)rect{
    
    
    CGRect bounds = self.bounds;
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height /2.0;
    
//    float radius = MIN(bounds.size.width, bounds.size.height) / 2.0;

    float maxRadius = hypot(bounds.size.width, bounds.size.width);
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
//    [path addArcWithCenter:(center)
//                    radius:radius
//                    startAngle:0.0
//                    endAngle:M_PI * 2.0
//                    clockwise:YES];
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:(0)
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    
    path.lineWidth = 10;
    
//    [[UIColor lightGrayColor] setStroke];

    [self.circleColor setStroke];
    
    [path stroke];
    
    UIImage *logoImage = [UIImage imageNamed:@"dopeshit.png"];
    
    
    float imageWidth = logoImage.size.width;
    
    float imageHeight = logoImage.size.height;
    
    CGPoint dopeShitOrigin;
    
//    CGContextScaleCTM(UIGraphicsGetCurrentContext(), 0.5, 0.5);
    
    dopeShitOrigin.x = center.x - imageWidth/4;
    dopeShitOrigin.y = center.y - imageHeight/4;
    
    CGRect dopeshitRect = CGRectMake(dopeShitOrigin.x, dopeShitOrigin.y, imageWidth/2, imageHeight/2);
    
    
    [logoImage drawInRect:dopeshitRect];
    
    
}


@end
