//
//  LeftTableViewCell.m
//  testDemo
//
//  Created by Apple on 2019/7/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "LeftTableViewCell.h"
#import <Masonry.h>
@interface LeftTableViewCell ()
@property (nonatomic,strong)UILabel * mainLabel;
@property (nonatomic,strong)UIImageView * imgView;
@end
@implementation LeftTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.imgView];
        [self.contentView addSubview:self.mainLabel];
        [self layoutSubviewSnapKit];
    }
    return self;
}


- (UIImageView *)imgView{
    if (!_imgView) {
        _imgView = [[UIImageView alloc]init];
        _imgView.backgroundColor = [UIColor yellowColor];
    }
    return _imgView;
}
- (UILabel *)mainLabel{
    if (!_mainLabel) {
        _mainLabel = [[UILabel alloc]init];
        _mainLabel.font = [UIFont systemFontOfSize:15];
        _mainLabel.numberOfLines = 10;
    }
    return _mainLabel;
}
- (void)layoutSubviewSnapKit{
    [self.imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).mas_offset(10);
        make.centerX.mas_equalTo(self);
        make.size.mas_equalTo(CGSizeMake(80, 60));
    }];
//    [_mainLabel setContentHuggingPriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
//    [_mainLabel setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
    [self.mainLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(self);
        make.top.mas_equalTo(self.imgView.mas_bottom).mas_offset(15);
        make.bottom.mas_equalTo(self);
        make.height.mas_equalTo(100);
    }];
//    [self layoutIfNeeded];
}
- (void)setString:(NSString *)str{
    self.mainLabel.text = str;
    
}
















- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
