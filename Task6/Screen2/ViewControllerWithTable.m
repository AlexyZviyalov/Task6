//
//  ViewControllerWithTable.m
//  Task6
//
//  Created by ALIAKSEI ZAUYALAU on 6/23/20.
//  Copyright © 2020 ALIAKSEI ZAUYALAU. All rights reserved.
//

#import "ViewControllerWithTable.h"
#import "InfoTableViewCell.h"

@interface ViewControllerWithTable ()
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UILabel *header;

@end

@implementation ViewControllerWithTable

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = UIColor.whiteColor;
    [self setupHeader];
    [self setupTable];
}

-(void) setupHeader {
    self.header = [[UILabel alloc] init];
    [self.header setBackgroundColor:[UIColor colorWithRed:249.0/256.0 green:204.0/256.0 blue:120.0/256.9 alpha:1]];
    [self.view addSubview:self.header];
    self.header.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@ [
        [self.header.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor],
        [self.header.topAnchor constraintEqualToAnchor: self.view.topAnchor],
        [self.header.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor],
        [self.header.heightAnchor constraintEqualToConstant:75.0]]
    ];
    self.header.text = @"Info";
    [self.header setTextAlignment:NSTextAlignmentCenter];
    [self.header setFont:[self.header.font fontWithSize:22.0]];
}


-(void) setupTable{
    self.tableView =[[UITableView alloc] init];
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.tableView registerClass:InfoTableViewCell.class forCellReuseIdentifier:@"CellId"];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    
    [NSLayoutConstraint activateConstraints:@ [
        [self.tableView.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor],
        [self.tableView.topAnchor constraintEqualToAnchor: self.header.bottomAnchor],
        [self.tableView.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor],
        [self.tableView.bottomAnchor constraintEqualToAnchor: self.view.bottomAnchor]]
    ];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    InfoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId" forIndexPath: indexPath];
    return cell;
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
