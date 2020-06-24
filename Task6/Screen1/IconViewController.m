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
#import "ViewControllerWithTable.h"

int const ICON_SIZE = 70;
int const BUTTON_WIDTH = 290;
int const BUTTON_HEIGH = 50;

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
    
    UITapGestureRecognizer *singleTapOnCircle = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapOnCirlcle:)];
    [self.iconViewRound addGestureRecognizer:singleTapOnCircle];
    
    UITapGestureRecognizer *singleTapOnSquare = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapOnSquare:)];
    [self.iconViewSquare addGestureRecognizer:singleTapOnSquare];
    
    UITapGestureRecognizer *singleTapOnTriangle = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapOnTriangle:)];
       [self.iconViewTriangle addGestureRecognizer:singleTapOnTriangle];
    
    [self.navigationController setNavigationBarHidden:YES];
    
}

#pragma mark - TapRecognizer
-(void)handleSingleTapOnCirlcle: (UITapGestureRecognizer *) recoglizer {
   CGPoint location = [recoglizer locationInView:[recoglizer.view superview]];
    NSLog (@"TAP O TAP O TAP O");
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionAutoreverse animations:^{
        self.iconViewRound.frame = CGRectMake(50 - ICON_SIZE*0.1/2, 200 - ICON_SIZE*0.1/2, ICON_SIZE+ICON_SIZE*0.1, ICON_SIZE+ICON_SIZE*0.1);
    } completion:^(BOOL finished) {
        self.iconViewRound.frame = CGRectMake(50, 200, ICON_SIZE, ICON_SIZE);
        [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionAutoreverse animations:^{
           self.iconViewRound.frame = CGRectMake(50 + ICON_SIZE*0.1/2, 200 + ICON_SIZE*0.1/2, ICON_SIZE-ICON_SIZE*0.1, ICON_SIZE-ICON_SIZE*0.1);
       } completion:^(BOOL finished) {
           self.iconViewRound.frame = CGRectMake(50, 200, ICON_SIZE, ICON_SIZE);
          
       }];
    }];
}

-(void)handleSingleTapOnSquare: (UITapGestureRecognizer *) recoglizer {
   CGPoint location = [recoglizer locationInView:[recoglizer.view superview]];
    NSLog (@"TAP Q TAP Q TAP Q");
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionAutoreverse animations:^{
        self.iconViewSquare.frame = CGRectMake(self.view.bounds.size.width / 2 - ICON_SIZE / 2, 200 + (ICON_SIZE * 0.1) , ICON_SIZE, ICON_SIZE);
    } completion:^(BOOL finished) {
        self.iconViewSquare.frame = CGRectMake(self.view.bounds.size.width / 2 - ICON_SIZE / 2, 200, ICON_SIZE, ICON_SIZE);;
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionAutoreverse animations:^{
            self.iconViewSquare.frame = CGRectMake(self.view.bounds.size.width / 2 - ICON_SIZE / 2, 200 - (ICON_SIZE * 0.1) , ICON_SIZE, ICON_SIZE);
        } completion:^(BOOL finished) {
            self.iconViewSquare.frame = CGRectMake(self.view.bounds.size.width / 2 - ICON_SIZE / 2, 200, ICON_SIZE, ICON_SIZE);;
        }];
    }];
}

-(void)handleSingleTapOnTriangle: (UITapGestureRecognizer *) recoglizer {
   CGPoint location = [recoglizer locationInView:[recoglizer.view superview]];
    NSLog (@"TAP T TAP T TAP T");
    
    [UIView animateWithDuration:1.0 animations:^{
        self.iconViewTriangle.transform = CGAffineTransformRotate(self.iconViewTriangle.transform, M_PI / 6);
    }];
}

#pragma mark - ViewsSetup

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

#pragma mark - StartButton

- (void)setupStartButton {
    self.startButton = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.iconViewSquare.frame) - BUTTON_WIDTH / 2, CGRectGetMaxY(self.iconViewSquare.frame) + 200, BUTTON_WIDTH, BUTTON_HEIGH)];
    
    
    [self.startButton setTitle:@"START" forState:UIControlStateNormal];
    [self.startButton setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [self.startButton setBackgroundColor:[UIColor colorWithRed:249.0/256.0 green:204.0/256.0 blue:120.0/256.9 alpha:1]];
    self.startButton.layer.cornerRadius = 20;
    [self.startButton addTarget:self action:@selector(startButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.startButton];
}

-(void)startButtonDidTap: (UIButton *)button {
    NSLog(@"LETS START");
    
     
//    ViewControllerWithTable *next = ViewControllerWithTable
    
//    [self.navigationController pushViewController: tabbarcont animated:YES]; сделать проперти
}

#pragma mark - Label
-(void)setupLabel {
    self.readyLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.iconViewSquare.frame) - BUTTON_WIDTH / 2, CGRectGetMaxY(self.iconViewSquare.frame) - 190, BUTTON_WIDTH, BUTTON_HEIGH)];
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
