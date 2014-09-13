//
//  MGSTButton.m
//  Sudoku
//
//  Created by Melissa Galonsky on 9/12/14.
//  Copyright (c) 2014 Melissa Galonsky and Sarah Trisorus. All rights reserved.
//

#import "MGSTButton.h"

@implementation MGSTButton {
    int _number;
}

- (id)initWithFrame:(CGRect)frame andNumber:(int)number
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
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
