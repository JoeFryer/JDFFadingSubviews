//
//  UIView+JDFFadingSubviews.m
//  UIView_FadingSubviews
//
//  Created by Joe Fryer on 10/01/2015.
//  Copyright (c) 2014 Joe Fryer. All rights reserved.
//

#import "UIView+JDFFadingSubviews.h"


// Constants
static NSTimeInterval const JDFFadingSubviewsDefaultDuration = 0.5f;



@implementation UIView (JDFFadingSubviews)

- (void)fadeOutAllSubviews
{
    [self fadeAllSubviewsToAlpha:0.0f];
}

- (void)fadeInAllSubviews
{
    [self fadeAllSubviewsToAlpha:1.0f];
}

- (void)fadeOutAllSubviewsWithDuration:(NSTimeInterval)duration
{
    [self fadeAllSubviewsToAlpha:0.0f withDuration:duration];
}

- (void)fadeInAllSubviewsWithDuration:(NSTimeInterval)duration
{
    [self fadeAllSubviewsToAlpha:1.0f withDuration:duration];
}

- (void)fadeAllSubviewsToAlpha:(CGFloat)alpha
{
    [self fadeAllSubviewsToAlpha:alpha withDuration:JDFFadingSubviewsDefaultDuration];
}

- (void)fadeAllSubviewsToAlpha:(CGFloat)alpha withDuration:(NSTimeInterval)duration
{
    [UIView animateWithDuration:duration animations:^{
        for (UIView *subview in self.subviews) {
            if ([subview respondsToSelector:@selector(setAlpha:)]) {
                [subview setAlpha:alpha];
            }
        }
    }];
}

@end
