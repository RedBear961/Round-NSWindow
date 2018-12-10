/**
 * AppDelegate.m
 * RoundWindow
 *
 * Copyright © 2018 UpStream.team.
 * All rights reserved.
 */

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
	[self applicationShouldUpdateWindow];
}

- (void)applicationShouldUpdateWindow:(NSWindow *)aWindow {
	// The transferred window turns into a rounded one.
	aWindow.backgroundColor = [NSColor whiteColor];
	aWindow.opaque = NO;
	aWindow.styleMask = (NSWindowStyleMaskResizable | NSWindowStyleMaskTitled | NSWindowStyleMaskFullSizeContentView);
	
	aWindow.movableByWindowBackground = YES;
	aWindow.titlebarAppearsTransparent = YES;
	aWindow.titleVisibility = NSWindowTitleHidden;
	
	// Adjust the visibility of the system buttons yourself.
	aWindow.showsToolbarButton = NO;
	[aWindow standardWindowButton:NSWindowMiniaturizeButton].hidden = YES;
	[aWindow standardWindowButton:NSWindowCloseButton].hidden = YES;
	[aWindow standardWindowButton:NSWindowZoomButton].hidden = YES;
	
	// Set your own frame.
	[aWindow setFrame:CGRectMake(400.0, 0.0, 400.0, 500.0) display:YES];
	
	[aWindow makeKeyAndOrderFront:self];
}

- (void)applicationShouldUpdateWindow {
	// Takes the top window in the hierarchy and turns it into a rounded one.
	NSWindow *aWindow = [NSApp.windows objectAtIndex:0];
	[self applicationShouldUpdateWindow:aWindow];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
	// Closes the application if the last window is closed.
	return YES;
}

@end
