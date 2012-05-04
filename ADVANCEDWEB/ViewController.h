//
//  ViewController.h
//  ADVANCEDWEB
//
//  Created by Rob DeNicola on 5/4/12.
//  Copyright (c) 2012 DevelopMental IPhone Applications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate, UIAlertViewDelegate> {
    
    IBOutlet UIWebView *webView;
}



@property (strong, nonatomic) IBOutlet UIWebView *webView;

-(IBAction)pushButton:(id)sender;

@end
