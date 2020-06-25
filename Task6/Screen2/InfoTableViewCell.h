//
//  InfoTableViewCell.h
//  Task6
//
//  Created by ALIAKSEI ZAUYALAU on 6/25/20.
//  Copyright © 2020 ALIAKSEI ZAUYALAU. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ViewControllerWithTable;

@interface InfoTableViewCell : UITableViewCell

-(void)configureWithInfoTableViewCell:(ViewControllerWithTable *)infoItem;
@end

NS_ASSUME_NONNULL_END
