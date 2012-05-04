//
//  ViewController.m
//  ADVANCEDWEB
//
//  Created by Rob DeNicola on 5/4/12.
//  Copyright (c) 2012 DevelopMental IPhone Applications. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize webView;


-(IBAction)pushButton:(id)sender {
    
    
  /*  
    NSString *deviceType = [[UIDevice currentDevice] model];
    if ([deviceType isEqualToString:@"iPhone"]) {
        <#statements#>
    }
    
   */
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    
    
    webView.scalesPageToFit = YES;
    
    webView.backgroundColor = [UIColor blackColor];
    
    [webView becomeFirstResponder];
    
    webView.allowsInlineMediaPlayback = YES;
    
    NSString *urlAddress = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"htm"];
    NSURL *url = [NSURL fileURLWithPath:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    
    [webView setHidden:NO];
    
    [webView setMediaPlaybackAllowsAirPlay:YES];
    
    [webView setMediaPlaybackRequiresUserAction:YES];
    
    [webView setAlpha:1.0];
    
    [webView setDetectsPhoneNumbers:YES];
    
    [webView setMultipleTouchEnabled:YES];
    [webView setTag:1];
    
    //[webView set
    
    //webView.description = @"Description";
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
