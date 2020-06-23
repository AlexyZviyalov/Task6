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
    CGContextSetRGBStrokeColor(context, 238.0/256, 104.0/256.0, 106.0/256.0, 1);
     [[UIColor colorWithRed:238.0/256.0 green:104.0/256.0 blue:106.0/256.9 alpha:1] setFill];
    
    CGContextAddEllipseInRect(context, rect);
    CGContextStrokePath(context);
    CGContextFillEllipseInRect(context, rect);
       
}


@end
