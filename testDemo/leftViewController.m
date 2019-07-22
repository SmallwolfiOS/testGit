//
//  leftViewController.m
//  testDemo
//
//  Created by 马海平 on 2019/7/17.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "leftViewController.h"
#import "LeftTableViewCell.h"
#import <Masonry.h>
@interface leftViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)    UITableView * tableView;
@property (nonatomic,copy)      NSArray * dataSource;
@end

@implementation leftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.tableView];
    [self layoutSubviewSnapkit];
}

- (NSArray *)dataSource{
    return @[@"房间看电视了解放啦手机发了两卡健身房啦时间发牢骚； ",
             @"fklsjflkasjflasf； ",
             @"大家看撒了放假啊路上风景爱上； ； ",
             @"开发商烂大街款；法律上飞机拉屎；啊发；发生了打开附近开了；啊上飞机；啊上发生；放假啊上了放假啊路上； ",
             @"放假了肯定撒减肥啦时间发卢萨卡卢萨卡放假来上课就烦死啦；附近；卅六块腹肌是拉开肌肤是拉开放假撒离开房间里看撒就发卢萨卡肌肤拉萨空间发卢萨卡就发卢萨卡肌肤是拉开放假是拉开肌肤爱上了； ； ",
             @"沙发客连锁酒店拉开放假撒了看法就；啊上了放假了；看撒放假啊上了就发卢萨卡减肥了 ",
             @"两卡健身房啦时间发牢骚； ",
             @"房间看电视了解放啦手机发了两卡健身房啦时间发牢骚； ",
             @"房间看电视了解放啦手机发了两卡健身房啦时间发牢骚； ",
             @"房间看电视了解放啦手机发了两卡健身房啦时间发牢骚； ",
             @"房间看电视了解放啦手机发了两卡健身房啦时间发牢骚； ",
             @"房间看电视了解放啦手机发了两卡健身房啦时间发牢骚； ",
             @"房间看电视了解放啦手机发了两卡健身房啦时间发牢骚； ",
              ];
}
- (void)layoutSubviewSnapkit{
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view);
    }];
    [self.view layoutIfNeeded];
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]init];
//        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.backgroundColor = [UIColor purpleColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.estimatedRowHeight = 200;
        _tableView.rowHeight = UITableViewAutomaticDimension;
    }
    return _tableView;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}
- (UITableViewCell * )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LeftTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(LeftTableViewCell.class)];
    if (!cell) {
        cell = [[LeftTableViewCell alloc]initWithStyle:(UITableViewCellStyle)UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass(LeftTableViewCell.class)];
    }
    [cell setString:self.dataSource[indexPath.row]];
    return cell;
}
@end
