//
//  ViewController.m
//  ShortcutAlertView
//
//  Created by Francescu on 14/05/2014.
//  Copyright (c) 2014 Stupeflix. All rights reserved.
//

#import "ViewController.h"
#import "KeyCommandsView.h"

@interface ViewController () <UIAlertViewDelegate>
@property (nonatomic, strong) UIAlertView *alertView;
@property (nonatomic, strong) KeyCommandsView *keyCommandsView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.alertView = [[UIAlertView alloc] initWithTitle:@"test" message:@"test" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
    
    self.keyCommandsView = [[KeyCommandsView alloc] initWithFrame:CGRectZero];
    self.keyCommandsView.alertView = self.alertView;
    
    [self.view addSubview:self.keyCommandsView];
    [self.alertView show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void)didPresentAlertView:(UIAlertView *)alertView
{
    [self.keyCommandsView becomeFirstResponder];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    [self.keyCommandsView resignFirstResponder];
}
@end
