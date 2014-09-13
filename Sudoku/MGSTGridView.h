//
//  MGSTGridView.h
//  Sudoku
//
//  Created by Melissa Galonsky on 9/12/14.
//  Copyright (c) 2014 Melissa Galonsky and Sarah Trisorus. All rights reserved.
//

#import <UIKit/UIKit.h>

static const int NUM_BUTTONS = 9;

@interface MGSTGridView : UIView

- (id)initWithFrame:(CGRect)frame andSudokuArray:(int[NUM_BUTTONS][NUM_BUTTONS])intArray;

@end
