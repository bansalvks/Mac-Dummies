//
//  AppDelegate.h
//  animationTrial
//
//  Created by Paxcel on 13/08/15.
//  Copyright (c) 2015 TechHeal. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>


@property IBOutlet NSImageView* img;

@property (weak) IBOutlet NSButton *button;

- (IBAction)buttonPressed:(id)sender;


@end

