//
//  PPGlobalNavigatorMetrics.m
//  PhotoScroller
//
//  Created by Marian PAUL on 03/11/10.
//  Copyright 2010 iPuP SARL. All rights reserved.
//

#import "PPGlobalNavigatorMetrics.h"

UIInterfaceOrientation PPInterfaceOrientation() {
	UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
	return orientation;
}

CGRect PPScreenBounds() {
	CGRect bounds = [UIScreen mainScreen].bounds;
	if (UIInterfaceOrientationIsLandscape(PPInterfaceOrientation())) {
		CGFloat width = bounds.size.width;
		bounds.size.width = bounds.size.height;
		bounds.size.height = width;
	}
	return bounds;
}

CGRect PPScreenBoundsWithOrientation(UIInterfaceOrientation orientation) {
	CGRect bounds = [UIScreen mainScreen].bounds;
	if (UIInterfaceOrientationIsLandscape(orientation)) {
		CGFloat width = bounds.size.width;
		bounds.size.width = bounds.size.height;
		bounds.size.height = width;
	}
	return bounds;
}

CGRect PPNavigationFrame() {
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	return CGRectMake(0.0, 0.0, frame.size.width, frame.size.height - PPToolBarHeight());
}

CGFloat PPToolBarHeight() {
	UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
	if (UIInterfaceOrientationIsLandscape(orientation)) {
		// for iPad, the bar size does not change
		if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
			return 44.0f;
		}
		return 32.0f;
	}
	else {
		return 44.0f;
	}
}

CGFloat PPTabBarHeight() {
	return 49.0f;
}

CGFloat PPStatusBarHeight() {
    if (UIInterfaceOrientationIsLandscape(PPInterfaceOrientation()))
        return [[UIApplication sharedApplication] statusBarFrame].size.width;
    else
        return [[UIApplication sharedApplication] statusBarFrame].size.height;
}

CGFloat PPScreenWidth() {
	return CGRectGetWidth(PPScreenBounds());
}

CGFloat PPScreenHeight() {
	return CGRectGetHeight(PPScreenBounds());
}