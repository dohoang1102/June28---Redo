//
//  Hw3.h
//  Hw3
//
//  Created by Gamal Ali on 07/19/12.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@class View;

@interface PongAppDelegate: UIResponder <UIApplicationDelegate>  {
	UIWindow *_window;
    View *view;
    
}

@property (strong, nonatomic) UIWindow *window;
@end
