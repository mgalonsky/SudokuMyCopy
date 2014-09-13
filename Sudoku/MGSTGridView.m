//
//  MGSTGridView.m
//  Sudoku
//
//  Created by Melissa Galonsky on 9/12/14.
//  Copyright (c) 2014 Melissa Galonsky and Sarah Trisorus. All rights reserved.
//

#import "MGSTGridView.h"
#import "MGSTButton.h"

const int CELL_SIZE = 15;
const int CELL_PADDING = 2;
const int GRID_PADDING = 5;

@implementation MGSTGridView {
    NSMutableArray* _buttons;
}

- (id)initWithFrame:(CGRect)frame andSudokuArray:(int[NUM_BUTTONS][NUM_BUTTONS])intArray
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _buttons = [[NSMutableArray alloc] init];
        CGFloat x = GRID_PADDING;
        CGFloat y = GRID_PADDING;
        for (int i = 0; i < NUM_BUTTONS; i++) {
            for (int j = 0; j < NUM_BUTTONS; j++) {
                CGRect frame = CGRectMake(x, y, CELL_SIZE, CELL_SIZE);
                MGSTButton* button = [[MGSTButton alloc] initWithFrame:frame andNumber:intArray[i][j]];
                button.backgroundColor = [UIColor whiteColor];
                button.tag = [self calculateIndexFromColumn:i andRow:j];
                NSLog(@"Added button %d", button.tag);
                [self addSubview:button];
                [_buttons addObject:button];
            }
        }
    }
    return self;
}

- (int)calculateIndexFromColumn:(int)column andRow:(int)row
{
    return column*NUM_BUTTONS+row;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
