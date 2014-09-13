//
//  MGSTGridView.m
//  Sudoku
//
//  Created by Melissa Galonsky on 9/12/14.
//  Copyright (c) 2014 Melissa Galonsky and Sarah Trisorus. All rights reserved.
//

#import "MGSTGridView.h"
#import "MGSTButton.h"

@implementation MGSTGridView {
    CGFloat CELL_SIZE;
    CGFloat CELL_PADDING;
    CGFloat GRID_PADDING;
    
    NSMutableArray* _buttons;
}

- (id)initWithFrame:(CGRect)frame andSudokuArray:(int[NUM_BUTTONS][NUM_BUTTONS])intArray
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        CGRect gridFrame = self.frame;
        CELL_SIZE = CGRectGetHeight(gridFrame) * 0.09;
        CELL_PADDING = CELL_SIZE * 0.15;
        GRID_PADDING = CELL_SIZE * 0.3;
        
        _buttons = [[NSMutableArray alloc] init];
        
        CGFloat x = GRID_PADDING;
        CGFloat y = GRID_PADDING;
        
        for (int i = 0; i < NUM_BUTTONS; i++) {
            for (int j = 0; j < NUM_BUTTONS; j++) {
                // Make the button
                CGRect frame = CGRectMake(x, y, CELL_SIZE, CELL_SIZE);
                MGSTButton* button = [[MGSTButton alloc] initWithFrame:frame andNumber:intArray[i][j]];
                button.tag = [self calculateIndexFromColumn:i andRow:j];
                [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
                
                // Display the button
                [self addSubview:button];
                
                // Add it to the array
                [_buttons addObject:button];
                
                // Calculate the new y
                if ((j + 1) % 3 == 0) {
                    y += CELL_SIZE + GRID_PADDING;
                }
                else {
                    y += CELL_SIZE + CELL_PADDING;
                }
            }
            
            // Increment x and reset y
            if ((i + 1) % 3 == 0) {
                x += CELL_SIZE + GRID_PADDING;
            }
            else {
                x += CELL_SIZE + CELL_PADDING;
            }
            y = GRID_PADDING;
        }
    }
    return self;
}

- (int)calculateIndexFromColumn:(int)column andRow:(int)row
{
    return column*NUM_BUTTONS+row;
}

- (int)calculateRowFromIndex:(int)index
{
    return index % NUM_BUTTONS;
}

- (int)calculateColFromIndex:(int)index
{
    return index / NUM_BUTTONS;
}

-(void) buttonPressed: (id) sender
{
    UIButton *button = (UIButton*) sender;
    button.showsTouchWhenHighlighted = TRUE;
    NSLog(@"Button was pressed at row %d, col %d", [self calculateRowFromIndex:button.tag],
                                                   [self calculateColFromIndex:button.tag]);
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
