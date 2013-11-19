//
//  UIBarButtonItem+HelpMe.m
//  Humanoid
//
//  Created by Jérémy Lagrue on 22/10/13.
//  Copyright (c) 2013 iPuP. All rights reserved.
//

#import "UIBarButtonItem+HelpMe.h"

@implementation UIBarButtonItem (HelpMe)

+ (UIBarButtonItem*) buildBarButtonImageName:(NSString *)imageName target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *image = [UIImage imageNamed:imageName];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    return buttonItem;
}

@end