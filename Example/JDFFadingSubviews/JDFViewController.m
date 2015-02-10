//
//  JDFViewController.m
//  JDFFadingSubviews
//
//  Created by Joe Fryer on 02/10/2015.
//  Copyright (c) 2014 Joe Fryer. All rights reserved.
//

#import "JDFViewController.h"

// JDFFadingSubviews
#import "UIView+JDFFadingSubviews.h"


@interface JDFViewController ()

@end


@implementation JDFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"Fading Subviews";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(20.0f, 80.0f, 80.0f, 40.0f);
    [button1 setTitle:@"Button 1" forState:UIControlStateNormal];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(20.0f, 200.0f, 80.0f, 40.0f);
    [button2 setTitle:@"Button 2" forState:UIControlStateNormal];
    [self.view addSubview:button2];
    
    UIBarButtonItem *fadeOutButton = [[UIBarButtonItem alloc] initWithTitle:@"Fade Out" style:UIBarButtonItemStyleDone target:self action:@selector(fadeOutButtonPressed)];
    self.navigationItem.leftBarButtonItem = fadeOutButton;
    
    UIBarButtonItem *fadeInButton = [[UIBarButtonItem alloc] initWithTitle:@"Fade In" style:UIBarButtonItemStyleDone target:self action:@selector(fadeInButtonPressed)];
    self.navigationItem.rightBarButtonItem = fadeInButton;
    
    CGRect rect1 = CGRectMake(100, 300, 200, 200);
    CGRect rect2 = CGRectMake(0, 0, 100, 100);
    
    UIView *view1 = [[UIView alloc] initWithFrame:rect1];
    view1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:rect2];
    view2.backgroundColor = [UIColor lightGrayColor];
    [view1 addSubview:view2];
}

- (void)fadeOutButtonPressed
{
    [self.view fadeOutAllSubviews];
}

- (void)fadeInButtonPressed
{
    [self.view fadeInAllSubviews];
}

@end
