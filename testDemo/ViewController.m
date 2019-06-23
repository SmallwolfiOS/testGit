//
//  ViewController.m
//  testDemo
//
//  Created by Jason on 16/5/16.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    for(NSString *familyName in [UIFont familyNames]){
        NSLog(@"Font FamilyName = %@\n\n",familyName); //*输出字体族科名字
        
        for(NSString *fontName in [UIFont fontNamesForFamilyName:familyName]) {
            NSLog(@"t%@",fontName);         //*输出字体族科下字样名字
        }
    }
    NSLog(@"这是我在公司的commit");
    
    [self switchToInteger:@"123ABC"];
    [self switchToInteger:@"ABC"];
    [self switchToInteger:@"ABC123"];
    [self switchToInteger:@"123ABC456"];
    [self switchToInteger:@"123.456"];
    [self switchToInteger:@"123"];
    [self switchToInteger:@"123汉字"];
    
}

- (NSInteger)switchToInteger:(NSString *)str{
    NSInteger i = [str integerValue];
    NSLog(@"%@    ==============>%lu",str,i);
    return i;
}
/**
 *  点击旋转按钮
 */
- (IBAction)rotateAction:(UIButton *)sender {
    NSArray * array = @[@"1",@"2"];
    [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeLeft] forKey:@"orientation"];
//    [NSException raise:@"出现了一个错误%@" format:@"hello world"];
//    NSString * str = array[0];
    
    
}


////是否支持旋转屏幕
//- (BOOL)shouldAutorotate{
//    return YES;
//}
////支持哪些方向
//- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
//    return UIInterfaceOrientationMaskLandscape;
//}
////默认显示的方向
//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
//    return UIInterfaceOrientationLandscapeLeft;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
