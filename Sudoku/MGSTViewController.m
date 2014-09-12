//
//  MGSTViewController.m
//  Sudoku
//
//  Created by Melissa Galonsky on 9/11/14.
//  Copyright (c) 2014 Melissa Galonsky and Sarah Trisorus. All rights reserved.
//

#import "MGSTViewController.h"
#import "MGSTGridView.h"

int initialGrid[9][9]={
    {7,0,0,4,2,0,0,0,9},
    {0,0,9,5,0,0,0,0,4},
    {0,2,0,6,9,0,5,0,0},
    {6,5,0,0,0,0,4,3,0},
    {0,8,0,0,0,6,0,0,7},
    {0,1,0,0,4,5,6,0,0},
    {0,0,0,8,6,0,0,0,2},
    {3,4,0,9,0,0,1,0,0},
    {8,0,0,3,0,2,7,4,0}
};

@interface MGSTViewController () {
    UIView* _gridView;
}

@end

@implementation MGSTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Create the grid view
    CGRect frame = self.view.frame;
    CGFloat x = CGRectGetWidth(frame)*.1;
    CGFloat y = CGRectGetHeight(frame)*.1;
    CGFloat size = CGRectGetWidth(frame)*.8;
    CGRect gridFrame = CGRectMake(x, y, size, size);
    
    _gridView = [[MGSTGridView alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_gridView];
    
    
    
    // Create button
//    CGRect frame = self.view.frame;
//    CGRect buttonFrame = CGRectMake(CGRectGetWidth(frame)*.5, CGRectGetHeight(frame)*.5, 50, 50);
//    _button = [[UIButton alloc] initWithFrame:buttonFrame];
//    _button.backgroundColor = [UIColor blueColor];
//    _button.tag = 1;
//    [self.view addSubview:_button];
//    
//    [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
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
