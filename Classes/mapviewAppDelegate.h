//
//  mapviewAppDelegate.h
//  mapview
//
//  Created by Almighty Kim on 1/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

@class mapviewViewController;
@class EventRouteWindow;

@interface mapviewAppDelegate : NSObject <UIApplicationDelegate> {
    EventRouteWindow *window;
    mapviewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet EventRouteWindow *window;
@property (nonatomic, retain) IBOutlet mapviewViewController *viewController;
@end


@interface EventRouteWindow : UIWindow {
	id overlayListener;
}
@property (nonatomic, retain) id overlayListener;
@end
