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
    CGContextSetRGBStrokeColor(context, 0, 204, 0, 1);
    CGContextSetLineWidth(context, 0.03 * rect.size.width);
    
    CGContextMoveToPoint(context, 0, rect.size.height);
    CGContextAddLineToPoint(context, rect.size.width / 2, 0);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    CGContextAddLineToPoint(context, 0, rect.size.height);
    CGContextClosePath(context);
    [[UIColor greenColor] setFill];
    CGContextDrawPath(context, kCGPathFillStroke);
    
      CGContextStrokePath(context);
    
    
}

@end
