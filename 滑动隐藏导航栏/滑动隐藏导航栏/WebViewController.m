//
//  WebViewController.m
//  滑动隐藏导航栏
//
//  Created by meng on 16/6/7.
//  Copyright © 2016年 meng. All rights reserved.
//

#import "WebViewController.h"
#import "UIViewController+ScrollHide.h"
#define Kwidth self.view.bounds.size.width
#define Kheight self.view.bounds.size.height
@interface WebViewController ()

@property (nonatomic, strong) UIWebView* webView;

@end

@implementation WebViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"webView";

    [self.view addSubview:self.webView];
    _webView.frame = self.view.frame;

    NSString* url = @"https://github.com/mengzhihoing/json/blob/master/README.md";

    NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];

    [_webView loadRequest:request];
}

- (UIWebView*)webView
{
    if (!_webView) {
        _webView = [[UIWebView alloc] initWithFrame:self.view.frame];
        [self.view addSubview:_webView];
        __weak id weakSelf = self;
#warning 这里需要设置为srollView的代理
        _webView.scrollView.delegate = weakSelf;
    }

    return _webView;
}

@end
