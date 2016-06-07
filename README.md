# iOS-scroll-hide-navigationBar
 向上滑动时隐藏导航栏，下拉时显示， NavigationBar hide when scrolled



###使用方法 ，在需要使用这种效果的控制器中
1.#import "UIViewController+ScrollHide.h"  
2.设置代理（UIScrollView ,UitableView,UIWebView(webView的scrollView代理））


##注意不要设置这两个属性，否则导航栏会出现变黑  
self.automaticallyAdjustsScrollViewInsets=NO;
self.edgesForExtendedLayout=UIRectEdgeNone;











![image](https://raw.githubusercontent.com/mengzhihoing/iOS-scroll-hide-navigationBar/master/1.gif

![image](https://raw.githubusercontent.com/mengzhihoing/iOS-scroll-hide-navigationBar/master/2.gif)  

![image](https://raw.githubusercontent.com/mengzhihoing/iOS-scroll-hide-navigationBar/master/3.gif)

