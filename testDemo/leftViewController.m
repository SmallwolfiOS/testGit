//
//  leftViewController.m
//  testDemo
//
//  Created by 马海平 on 2019/7/17.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "leftViewController.h"
#import <Masonry.h>
@interface leftViewController ()

@end

@implementation leftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    UIView * view = [[UIView alloc]init];
    view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
