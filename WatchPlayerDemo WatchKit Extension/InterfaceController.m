//
//  InterfaceController.m
//  WatchPlayerDemo WatchKit Extension
//
//  Created by 李云龙 on 15/9/1.
//  Copyright © 2015年 hihilong. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceMovie *playButton;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *displayLabel;

@end


@implementation InterfaceController

// 在弹出或着push的时候初始化一些设置
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    [self setUIContext];
    
    
    
    // Configure interface objects here.
}
// 这个方法是在当界面显示在用户眼前的时候执行
- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    [self setUIVideo];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (void)setUIContext
{
    [self.displayLabel setText:@"hihilong.com"];
}

- (void)setUIVideo
{
    
    //    NSURL *url = [NSURL URLWithString:@"file:///Users/liyunlong/Desktop/burningmanbyair.m4v"];
    // 创建一个本地视频文件的url
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"burningmanbyair" withExtension:@"m4v"];
    // 设置视频播放器的url
    [self.playButton setMovieURL:url];
    // 设置视频播放是否循环 （默认是no）
    [self.playButton setLoops:YES];
    // 设置视频预览图盘
    WKImage *image = [WKImage imageWithImageName:@"Simulator"];
    [self.playButton setPosterImage:image];
    
}

@end



