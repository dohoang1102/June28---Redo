//
//  View.m
//  Hw3
//
//  Created by Gamal Ali on 7/19/12.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor blackColor];
        NSString *text = @"Twist and Shout";
        UIFont *font = [UIFont boldSystemFontOfSize: 25];
        CGSize size = [text sizeWithFont: font];
        
        CGRect f = CGRectMake (size.width/3, 10, size.width, size.height/2);
        
        label = [[UILabel alloc] initWithFrame: f];
        label.font = font;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor whiteColor];
        label.text = text;
        [self addSubview: label];
        
        dx = 3; 
        dy = 1;
        
        
    }
    return self;
}

//Change the ball's direction of motion,
//if necessary to avoid an impending collision.

- (void) bounce {	
	//Where the ball would be if its horizontal motion were allowed
	//to continue for one more move.
	CGRect horizontal = label.frame;
	horizontal.origin.x += dx;
	
	//Where the ball would be if its vertical motion were allowed
	//to continue for one more move.
	CGRect vertical = label.frame;
	vertical.origin.y += dy;
	
	//Ball must remain inside self.bounds.
	if (!CGRectEqualToRect(horizontal, CGRectIntersection(horizontal, self.bounds))) {
		//Ball will bounce off left or right edge of View.
		dx = -dx;
	}
	
	if (!CGRectEqualToRect(vertical, CGRectIntersection(vertical, self.bounds))) {
		//Ball will bounce off top or bottom edge of View.
		dy = -dy;
	}
	
	}


- (void) move: (CADisplayLink *) displayLink {
	//NSLog(@"%.15g", displayLink.timestamp);	//15 significant digits
	
	label.center = CGPointMake(label.center.x + dx, label.center.y + dy);
	[self bounce];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
}
*/

@end
