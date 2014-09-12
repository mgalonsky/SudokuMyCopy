//
//  MGSTViewController.m
//  Sudoku
//
//  Created by Melissa Galonsky on 9/11/14.
//  Copyright (c) 2014 Melissa Galonsky and Sarah Trisorus. All rights reserved.
//

#import "MGSTViewController.h"

@interface MGSTViewController () {
    UIButton* _button;
}

@end

@implementation MGSTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Create button
    CGRect frame = self.view.frame;
    CGRect buttonFrame = CGRectMake(CGRectGetWidth(frame)*.5, CGRectGetHeight(frame)*.5, 50, 50);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor blueColor];
    _button.tag = 1;
    [self.view addSubview:_button];
    
    [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) buttonPressed: (id) sender
{
    UIButton *button = (UIButton*) sender;
    button.showsTouchWhenHighlighted = TRUE;
    NSLog(@"Button %d was pressed", button.tag);
}

@end
