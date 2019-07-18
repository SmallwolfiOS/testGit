//
//  ViewController.m
//  testDemo
//
//  Created by Jason on 16/5/16.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "leftViewController.h"
#import "rightViewController.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
@interface ViewController ()
@property (nonatomic,strong)UIScrollView * scrollView;
@property (nonatomic,strong)leftViewController * leftVC;
@property (nonatomic,strong)rightViewController * rightVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [self.view addSubview:self.scrollView];
    [self setupSub];
    [self layoutSubviewSnapKit];
    
    
}
- (UIScrollView *)scrollView{
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc]init];
        _scrollView.backgroundColor = [UIColor purpleColor];
        _scrollView.pagingEnabled = YES;
        _scrollView.showsVerticalScrollIndicator = NO;
//        _scrollView.directionalLockEnabled = YES;
        _scrollView.bounces = NO;
    }
    return _scrollView;
}
- (void)setupSub{
    self.leftVC = [[leftViewController alloc]init];
    self.rightVC = [[rightViewController alloc]init];
    
    [self addChildViewController:self.leftVC];
    [self addChildViewController:self.rightVC];
    
    [self.scrollView addSubview:self.leftVC.view];
    [self.scrollView addSubview:self.rightVC.view];
}
- (void)layoutSubviewSnapKit{
    [self.leftVC.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self.view);
        make.width.mas_equalTo(kScreenWidth);
        make.left.mas_equalTo(self.scrollView);
    }];
    [self.rightVC.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self.view);
        make.width.mas_equalTo(kScreenWidth);
        make.left.mas_equalTo(self.leftVC.view.mas_right);
    }];
    [self.scrollView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view);
        make.right.mas_equalTo(self.rightVC.view);
    }];
}
















- (void)funtionforViewdid{
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
    
    NSLog(@"这是我在公司的commit");
    
    
    NSLog(@"111");

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
