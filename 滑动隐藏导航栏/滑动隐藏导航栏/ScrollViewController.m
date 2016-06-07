//
//  ScrollViewController.m
//  滑动隐藏导航栏
//
//  Created by meng on 16/6/7.
//  Copyright © 2016年 meng. All rights reserved.
//

#import "ScrollViewController.h"
#import "UIViewController+ScrollHide.h"
#define Kwidth self.view.bounds.size.width
#define Kheight self.view.bounds.size.height
@interface ScrollViewController ()

@property (nonatomic,strong)UIScrollView *scrollView;

@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"scrollView";
    
    
    UIImageView *imageView=[[UIImageView alloc]init];
    [self.scrollView addSubview:imageView];
    imageView.backgroundColor=[UIColor blueColor];
    imageView.frame=CGRectMake(0, 0, Kwidth,Kheight);
    
}

- (UIScrollView *)scrollView{
    if (!_scrollView) {
        _scrollView=[[UIScrollView alloc]initWithFrame:self.view.frame];
        [self.view addSubview:_scrollView];
        __weak id weakSelf=self;
        _scrollView.delegate=weakSelf;
        _scrollView.contentSize=CGSizeMake(0, Kheight*2);
    }
    
    return _scrollView;
}


@end
