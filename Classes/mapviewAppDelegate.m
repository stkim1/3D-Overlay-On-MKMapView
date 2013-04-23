//
//  mapviewAppDelegate.m
//  mapview
//
//  Created by Almighty Kim on 1/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "mapviewAppDelegate.h"
#import "mapviewViewController.h"

@implementation mapviewAppDelegate

@synthesize window;
@synthesize viewController;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [self.window addSubview:viewController.view];
	[window setOverlayListener:[viewController oglesView]];
    [self.window makeKeyAndVisible];
	
    return YES;
}

- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}

@end

@implementation EventRouteWindow
@synthesize overlayListener;
-(id)initWithFrame:(CGRect)frame
{
	if((self = [super initWithFrame:frame]))
	{
	}
	return self;
}

-(void)dealloc
{
	[super dealloc];
}

- (void)sendEvent:(UIEvent*)event {
	[super sendEvent:event];	
	if(overlayListener != nil && [overlayListener respondsToSelector:@selector(handleTouches:)])
		[overlayListener performSelector:@selector(handleTouches:) withObject:event];

}
@end
