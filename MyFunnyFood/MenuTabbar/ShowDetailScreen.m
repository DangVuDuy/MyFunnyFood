//
//  ShowDetailScreen.m
//  MyFunnyFood
//
//  Created by Dang Vu Duy on 1/8/16.
//  Copyright © 2016 Dang Vu Duy. All rights reserved.
//

#import "ShowDetailScreen.h"

@interface ShowDetailScreen ()
@property (weak, nonatomic) IBOutlet UIImageView *imgFood;
@property (weak, nonatomic) IBOutlet UILabel *labNameFood;
@property (weak, nonatomic) IBOutlet UILabel *labPrice;
@property (weak, nonatomic) IBOutlet UILabel *labSaleOff;


@end

@implementation ShowDetailScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.stringNameFood;
    self.imgFood.image = self.imageFood;
    self.labNameFood.text = self.stringNameFood;
    self.labPrice.text = self.stringPrice;
    self.labSaleOff.text= self.stringSaleOff;
    
}



@end
