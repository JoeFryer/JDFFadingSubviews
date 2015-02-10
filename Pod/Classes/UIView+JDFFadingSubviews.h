//
//  UIView+JDFFadingSubviews.m
//  UIView_FadingSubviews
//
//  Created by Joe Fryer on 10/01/2015.
//  Copyright (c) 2014 Joe Fryer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JDFFadingSubviews)

- (void)fadeOutAllSubviews;
- (void)fadeInAllSubviews;
- (void)fadeOutAllSubviewsWithDuration:(NSTimeInterval)duration;
- (void)fadeInAllSubviewsWithDuration:(NSTimeInterval)duration;
- (void)fadeAllSubviewsToAlpha:(CGFloat)alpha;
- (void)fadeAllSubviewsToAlpha:(CGFloat)alpha withDuration:(NSTimeInterval)duration;

@end
