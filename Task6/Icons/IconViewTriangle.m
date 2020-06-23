//
//  IconView.m
//  Task6
//
//  Created by ALIAKSEI ZAUYALAU on 6/22/20.
//  Copyright © 2020 ALIAKSEI ZAUYALAU. All rights reserved.
//

#import "IconViewTriangle.h"

@implementation IconViewTriangle


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, 41.0/256, 194.0/256.0, 209.0/256.0, 1);
    CGContextSetLineWidth(context, 0.03 * rect.size.width);
    
    CGContextMoveToPoint(context, 0, rect.size.height);
    CGContextAddLineToPoint(context, rect.size.width / 2, 0);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    CGContextAddLineToPoint(context, 0, rect.size.height);
    CGContextClosePath(context);
    [[UIColor colorWithRed:41.0/256.0 green:194.0/256.0 blue:209.0/256.9 alpha:1] setFill];
    CGContextDrawPath(context, kCGPathFillStroke);
    
      CGContextStrokePath(context);
    
    
}

@end
