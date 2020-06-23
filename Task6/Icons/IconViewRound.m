//
//  IconViewRound.m
//  Task6
//
//  Created by ALIAKSEI ZAUYALAU on 6/23/20.
//  Copyright © 2020 ALIAKSEI ZAUYALAU. All rights reserved.
//

#import "IconViewRound.h"

@implementation IconViewRound


- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 0.001 * rect.size.width);
    CGContextSetRGBStrokeColor(context, 100, 0, 0, 1);
     [[UIColor redColor] setFill];
    
    CGContextAddEllipseInRect(context, rect);
    CGContextStrokePath(context);
    CGContextFillEllipseInRect(context, rect);
       
}


@end
