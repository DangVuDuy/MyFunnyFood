//
//  Dataitem.h
//  MyFunnyFood
//
//  Created by Dang Vu Duy on 1/6/16.
//  Copyright © 2016 Dang Vu Duy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Dataitem : NSObject
@property(nonatomic, strong) UIImage *image;
@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *price;
@property(nonatomic, strong) NSString *saleOff;

- (instancetype) initWithName: (NSString*)name
                     andPrice: (NSString*)price
                    withImage: (NSString*)image
              andSaleOffPrice: (NSString*)SaleOff;
@end
