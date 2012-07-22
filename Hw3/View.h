//
//  View.h
//  Hw3
//
//  Created by Gamal Ali on 7/19/12.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View: UIView {
	UILabel *label;
	CGFloat dx, dy;	//direction and speed of ball's motion
    
}

- (void) move: (CADisplayLink *) displayLink;
@end
