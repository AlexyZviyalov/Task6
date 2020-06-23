//
//  IconViewController.m
//  Task6
//
//  Created by ALIAKSEI ZAUYALAU on 6/22/20.
//  Copyright © 2020 ALIAKSEI ZAUYALAU. All rights reserved.
//

#import "IconViewController.h"
#import "IconViewTriangle.h"
#import "IconViewSquare.h"
#import "IconViewRound.h"

int const ICON_SIZE = 70;
int const BUTTON_WIDTH = 300;
int const BUTTON_HEIGH = 45;

@interface IconViewController ()
@property (nonatomic, strong) IconViewTriangle *iconViewTriangle;
@property (nonatomic, strong) IconViewSquare *iconViewSquare;
@property (nonatomic, strong) IconViewRound *iconViewRound;
@property (nonatomic,strong) UIButton *startButton;
@property (nonatomic,strong) UILabel *readyLabel;
@end

@implementation IconViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = UIColor.whiteColor;
    
    [self setupIconViewTriangle];
    [self setupIconViewSquare];
    [self setupIconViewRound];
    [self setupStartButton];
    [self setupLabel];
  
    
}

- (void)setupIconViewTriangle {
    self.iconViewTriangle = [[IconViewTriangle alloc] initWithFrame:CGRectMake(250, 200, ICON_SIZE, ICON_SIZE)];
    self.iconViewTriangle.backgroundColor = UIColor.whiteColor;

    [self.view addSubview:self.iconViewTriangle];

}

- (void)setupIconViewSquare {
    self.iconViewSquare = [[IconViewSquare alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - ICON_SIZE / 2, 200, ICON_SIZE, ICON_SIZE)];
    self.iconViewSquare.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.iconViewSquare];

}

- (void)setupIconViewRound {
    self.iconViewRound = [[IconViewRound alloc] initWithFrame:CGRectMake(50, 200, ICON_SIZE, ICON_SIZE)];
    self.iconViewRound.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.iconViewRound];

}

- (void)setupStartButton {
    self.startButton = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.iconViewSquare.frame) - BUTTON_WIDTH / 2, CGRectGetMaxY(self.iconViewSquare.frame) + 200, BUTTON_WIDTH, BUTTON_HEIGH)];
    
    
    [self.startButton setTitle:@"START" forState:UIControlStateNormal];
    [self.startButton setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [self.startButton setBackgroundColor:UIColor.yellowColor];
    self.startButton.layer.cornerRadius = 20;
    [self.startButton addTarget:self action:@selector(startButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.startButton];
}

-(void)startButtonDidTap: (UIButton *)button {
    NSLog(@"LETS START");
}

-(void)setupLabel {
    self.readyLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.iconViewSquare.frame) - BUTTON_WIDTH / 2, CGRectGetMaxY(self.iconViewSquare.frame) - 180, BUTTON_WIDTH, BUTTON_HEIGH)];
    [self.readyLabel setText:@"Are you ready?"];
    [self.readyLabel setTextAlignment:NSTextAlignmentCenter];
    [self.readyLabel setFont: [self.readyLabel.font fontWithSize: 22]];

    [self.view addSubview:self.readyLabel];
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
