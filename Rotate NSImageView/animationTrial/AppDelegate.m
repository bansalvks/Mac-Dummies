//
//  AppDelegate.m
//  animationTrial
//
//  Created by Paxcel on 13/08/15.
//  Copyright (c) 2015 TechHeal. All rights reserved.
//

#import <Quartz/Quartz.h>

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


-(void)buttonPressed:(id)sender{

    _img.layer.anchorPoint = CGPointMake(0.5f, 0.5f);
    
    
    
    CGPoint localPoint = [_img bounds].origin;
    CGPoint basePoint = [_img convertPoint:localPoint toView:nil];
    CGFloat xboundspoint= basePoint.x + (basePoint.x / 2);
    CGFloat yboundspoint= basePoint.y + (basePoint.y / 2);
    _img.layer.position = CGPointMake(xboundspoint, yboundspoint);
    
    
    
    
    [self startRefreshAnimation];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    [self startRefreshAnimation];
}

-(void)startRefreshAnimation {
    
    CABasicAnimation *anim2 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    anim2.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    NSNumber* toValue = [NSNumber numberWithFloat:0 * (M_PI / 180.0f)];
    NSNumber* fromValue = [NSNumber numberWithFloat:(360.0f) * (M_PI / 180.0f)];
    
    
    anim2.fromValue = toValue;
    anim2.toValue = fromValue;
    
    
    anim2.duration = 1.0f;
    anim2.delegate = self;
    [_img.layer addAnimation:anim2 forKey:@"transform"];
}

@end
