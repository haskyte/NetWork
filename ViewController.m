//
//  ViewController.m
//  NetWork
//
//  Created by wujianqiang on 15/8/24.
//  Copyright (c) 2015年 wujianqiang. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
@interface ViewController ()

/*  http://api2.jxvdy.com/focus_pic?name=screenplay */

/*  http://api.tudou.com/v3/gw?method=album.channel.get&appKey=myKey&format=json&channel=t&pageNo=1&pageSize=10 */
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // get 请求
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://api.tudou.com/v3/gw?method=album.channel.get&appKey=myKey&format=json&channel=t&pageNo=1&pageSize=10" parameters:nil success:^(AFHTTPRequestOperation * operation, id responceObject) {
        NSLog(@"%@",responceObject);
    } failure:^void(AFHTTPRequestOperation * operation, NSError * error) {
        NSLog(@"%@",error);
    }];
    NSLog(@"1231231231");
    
    
    // post 请求
    AFHTTPRequestOperationManager *manager1 = [AFHTTPRequestOperationManager manager];
    NSDictionary *paramaters = @{@"method":@"album.channel.get",@"appKey":@"myKey",@"format":@"json",@"channel":@"t",@"pageNo":@"1",@"pageSize":@"10"};
    [manager1 POST:@"http://api.tudou.com/v3/gw?" parameters:paramaters success:^(AFHTTPRequestOperation * operation, id Json) {
//        NSLog(@"%@",Json);
    } failure:^(AFHTTPRequestOperation * operation, NSError * error) {
        NSLog(@"%@",error);
    }];
    NSLog(@"123");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
