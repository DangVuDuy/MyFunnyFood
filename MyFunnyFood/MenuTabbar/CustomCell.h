//
//  CustomCell.h
//  MyFunnyFood
//
//  Created by Dang Vu Duy on 1/6/16.
//  Copyright © 2016 Dang Vu Duy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgUImageView;
@property (weak, nonatomic) IBOutlet UILabel *LabelName;
@property (weak, nonatomic) IBOutlet UILabel *labelPrice;
@property (weak, nonatomic) IBOutlet UILabel *labelSaleOff;

@end
