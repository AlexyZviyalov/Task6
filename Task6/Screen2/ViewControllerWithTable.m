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

@end

@implementation ViewControllerWithTable

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView =[[UITableView alloc] init];
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.tableView registerClass:InfoTableViewCell.class forCellReuseIdentifier:@"CellId"];
    [self.view addSubview:self.tableView];
    [NSLayoutConstraint activateConstraints:@ [
        [self.tableView.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor],
        [self.tableView.topAnchor constraintEqualToAnchor: self.view.topAnchor],
        [self.tableView.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor],
        [self.tableView.bottomAnchor constraintEqualToAnchor: self.view.bottomAnchor]]
    ];
    
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;

    self.view.backgroundColor = UIColor.whiteColor;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 14.0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    InfoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId" forIndexPath: indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%lu", indexPath.row];
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
