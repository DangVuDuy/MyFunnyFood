//
//  Dataitem.m
//  MyFunnyFood
//
//  Created by Dang Vu Duy on 1/6/16.
//  Copyright © 2016 Dang Vu Duy. All rights reserved.
//

#import "Dataitem.h"

@implementation Dataitem

- (instancetype) initWithName: (NSString*)name
                     andPrice: (NSString*)price
                    withImage: (NSString*)image
              andSaleOffPrice: (NSString*)SaleOff {
    if (self = [super init]) {
        self.name = name;
        self.price = price;
        self.image = [UIImage imageNamed:image];
        self.saleOff = SaleOff;
    }
    return self;
}
@end
