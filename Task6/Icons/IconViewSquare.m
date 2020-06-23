//
//  IconViewSquare.m
//  Task6
//
//  Created by ALIAKSEI ZAUYALAU on 6/22/20.
//  Copyright © 2020 ALIAKSEI ZAUYALAU. All rights reserved.
//

#import "IconViewSquare.h"

@implementation IconViewSquare


- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, 0, 0, 100, 1);
    CGContextSetLineWidth(context, 0.03 * rect.size.width);
    
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, 0, rect.size.height);
    
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    CGContextAddLineToPoint(context, rect.size.width, 0);
    CGContextAddLineToPoint(context, 0, 0);
    
    CGContextClosePath(context);
    [[UIColor blueColor] setFill];
    CGContextDrawPath(context, kCGPathFillStroke);
    
      CGContextStrokePath(context);
}


@end
