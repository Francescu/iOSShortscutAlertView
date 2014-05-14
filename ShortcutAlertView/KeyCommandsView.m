//
//  KeyCommandsView.m
//  ShortcutAlertView
//
//  Created by Francescu on 14/05/2014.
//  Copyright (c) 2014 Stupeflix. All rights reserved.
//

#import "KeyCommandsView.h"

@implementation KeyCommandsView

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

-(NSArray *)keyCommands {
    return @[[UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:@selector(enterPressed)]];
}

- (void)enterPressed
{
    [self.alertView dismissWithClickedButtonIndex:0 animated:YES];
}

@end
