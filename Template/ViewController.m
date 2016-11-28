//
//  ViewController.m
//  Template
//
//  Created by Wasif Qayyum on 11/3/16.
//  Copyright © 2016 Wasif Qayyum. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"

@interface ViewController () <UIWebViewDelegate>

@end

@implementation ViewController
- (IBAction)back:(id)sender {
    
    [_web_view goBack];
}
- (IBAction)home:(id)sender {
    
    _web_view.delegate = self;
    NSURL *url = [NSURL URLWithString:@"https://huntable.com/"];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_web_view loadRequest:requestObj];

}
- (IBAction)forward:(id)sender {
    
    [_web_view goForward];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    _web_view.delegate = self;
    NSURL *url = [NSURL URLWithString:@"https://huntable.com/"];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_web_view loadRequest:requestObj];
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    [SVProgressHUD dismiss];
    
}
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [SVProgressHUD showWithStatus:@""];
    
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    [SVProgressHUD show];
    
}

@end
