//
//  ViewController.m
//  AVRoutePickerViewDemo
//
//  Created by sunyazhou on 2019/4/17.
//  Copyright © 2019 sunyazhou.com. All rights reserved.
//

#import "ViewController.h"
#import <AVKit/AVKit.h>

@interface ViewController ()  <AVRoutePickerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (@available(iOS 11.0, *)) {
        AVRoutePickerView *routerPickerView = [[AVRoutePickerView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        routerPickerView.activeTintColor = [UIColor clearColor];
        routerPickerView.delegate = self;
        [self.view addSubview:routerPickerView];
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:routerPickerView.bounds];
        imageView.image = [UIImage imageNamed:@"logo2"];
        [routerPickerView addSubview:imageView];
    } else {
        // Fallback on earlier versions
    }
    
}

//AirPlay界面弹出时回调
- (void)routePickerViewWillBeginPresentingRoutes:(AVRoutePickerView *)routePickerView API_AVAILABLE(ios(11.0)){
    NSLog(@"Airp API_AVAILABLE(ios(11.0))lay视图弹出");
}
//AirPlay界面结束时回调
- (void)routePickerViewDidEndPresentingRoutes:(AVRoutePickerView *)routePickerView API_AVAILABLE(ios(11.0)){
    NSLog(@"Airplay视图弹回");
}

@end
