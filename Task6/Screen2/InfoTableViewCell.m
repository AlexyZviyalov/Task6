//
//  InfoTableViewCell.m
//  Task6
//
//  Created by ALIAKSEI ZAUYALAU on 6/25/20.
//  Copyright © 2020 ALIAKSEI ZAUYALAU. All rights reserved.
//

#import "InfoTableViewCell.h"
#import "ViewControllerWithTable.h"

@interface InfoTableViewCell ()
@property (nonatomic, strong) UILabel*titleLabel;
@property (nonatomic, strong) UIView *completedIndicatorView;


@end

@implementation InfoTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier: reuseIdentifier ];
    if (self){
        [self setupViews];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupViews];
}

-(void)configureWithInfoTableViewCell:(ViewControllerWithTable *)infoItem{
    self.titleLabel.text = infoItem.title;
}

-(void)setupViews{
    self.completedIndicatorView = [[UIView alloc] init];
    self.completedIndicatorView.backgroundColor = [UIColor whiteColor];
    self.completedIndicatorView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.completedIndicatorView];
    [NSLayoutConstraint activateConstraints:@[
        [self.completedIndicatorView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
        [self.completedIndicatorView.topAnchor constraintEqualToAnchor:self.topAnchor],
        [self.completedIndicatorView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
        [self.completedIndicatorView.widthAnchor constraintEqualToConstant:5.0]
    ]];
    
    self.titleLabel =[[UILabel alloc]init];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.titleLabel];
    [NSLayoutConstraint activateConstraints:@[
        [self.titleLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:16.0],
        [self.titleLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:16.0],
        [self.titleLabel.centerYAnchor constraintEqualToAnchor:self.centerYAnchor]
    ]];
    
}

//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];

    // Configure the view for the selected state


@end
