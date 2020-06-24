//
//  ViewControllerWithTable.m
//  Task6
//
//  Created by ALIAKSEI ZAUYALAU on 6/23/20.
//  Copyright © 2020 ALIAKSEI ZAUYALAU. All rights reserved.
//

#import "ViewControllerWithTable.h"

@interface ViewControllerWithTable ()
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewControllerWithTable

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView =[[UITableView alloc] init];
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"CellId"];
    [self.view addSubview:self.tableView];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.view.backgroundColor = UIColor.whiteColor;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10.0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId" forIndexPath: indexPath];
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
