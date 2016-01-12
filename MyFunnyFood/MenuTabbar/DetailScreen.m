//
//  DetailScreen.m
//  MyFunnyFood
//
//  Created by Dang Vu Duy on 1/6/16.
//  Copyright © 2016 Dang Vu Duy. All rights reserved.
//

#import "DetailScreen.h"
#import "CustomCell.h"
#import "Dataitem.h"
#import "ShowDetailScreen.h"

@interface DetailScreen ()

@end

@implementation DetailScreen {
    NSMutableArray *arrayDataItems;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self chooseDataItem];
    [self.tableView reloadData];

}

- (void)viewDidLoad {
    [super viewDidLoad];
     [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
    

}
- (void) chooseDataItem {
    if ([self.stringTitleDetailScreen isEqualToString:@"Ice Cream"]) {
        [self creatDataIceCream];
        
    } else if ([self.stringTitleDetailScreen isEqualToString:@"Drink"]) {
        [self createDataDrink];
        
    } else if ([self.stringTitleDetailScreen isEqualToString:@"Birthday"]) {
        [self createDataBirthday];
        
    } else if ([self.stringTitleDetailScreen isEqualToString:@"Cookies"]) {
        [self createDataCookies];
        
    } else if ([self.stringTitleDetailScreen isEqualToString:@"Bread"]) {
        [self createDataBread];
    }
}

- (void) creatDataIceCream {
    Dataitem *iceCream1 = [[Dataitem alloc] initWithName:@"Kem Vani" andPrice:@"20$" withImage:@"cream01.jpg" andSaleOffPrice:@""];
     Dataitem *iceCream2 = [[Dataitem alloc] initWithName:@"Kem Sữa dừa" andPrice:@"15$" withImage:@"cream02.jpg" andSaleOffPrice:@"-10%"];
     Dataitem *iceCream3 = [[Dataitem alloc] initWithName:@"Kem Rum Nho" andPrice:@"25$" withImage:@"cream03.jpg" andSaleOffPrice:@"-5%"];
     Dataitem *iceCream4 = [[Dataitem alloc] initWithName:@"Kem Caramel hạch nhân" andPrice:@"10$" withImage:@"cream04.jpg" andSaleOffPrice:@""];
     Dataitem *iceCream5 = [[Dataitem alloc] initWithName:@"Kem Tuyết Cappucino" andPrice:@"20$" withImage:@"cream05.jpg" andSaleOffPrice:@"-5%"];
     Dataitem *iceCream6 = [[Dataitem alloc] initWithName:@"Kem Mocha Chocolate" andPrice:@"25$" withImage:@"cream06.jpg" andSaleOffPrice:@""];
     Dataitem *iceCream7 = [[Dataitem alloc] initWithName:@"Kem Tuyết xoài" andPrice:@"10$" withImage:@"cream07.jpg" andSaleOffPrice:@"-10%"];
     Dataitem *iceCream8 = [[Dataitem alloc] initWithName:@"Kem Tuyết Dâu Tây" andPrice:@"20$" withImage:@"cream08.jpg" andSaleOffPrice:@""];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:iceCream1, iceCream2, iceCream3, iceCream4, iceCream5, iceCream5, iceCream6, iceCream7, iceCream8, nil];
}
- (void) createDataDrink {
    Dataitem *drink1 = [[Dataitem alloc] initWithName:@"Cà phê American" andPrice:@"$23" withImage:@"drink01.jpg" andSaleOffPrice:@""];
    Dataitem *drink2 = [[Dataitem alloc] initWithName:@"Espresso" andPrice:@"$24" withImage:@"drink02.jpg" andSaleOffPrice:@""];
    Dataitem *drink3 = [[Dataitem alloc] initWithName:@"Cappuccino" andPrice:@"$28" withImage:@"drink03.jpg" andSaleOffPrice:@""];
    Dataitem *drink4 = [[Dataitem alloc] initWithName:@"Techmaster Café" andPrice:@"$27" withImage:@"drink04.jpg" andSaleOffPrice:@"free"];
    Dataitem *drink5 = [[Dataitem alloc] initWithName:@"Hồng trà Srilanca" andPrice:@"$17" withImage:@"drink05.jpg" andSaleOffPrice:@""];
    Dataitem *drink6 = [[Dataitem alloc] initWithName:@"Hồng trà Bá Tước" andPrice:@"$29" withImage:@"drink06.jpg" andSaleOffPrice:@""];
    Dataitem *drink7 = [[Dataitem alloc] initWithName:@"Hồng trà đào" andPrice:@"$33" withImage:@"drink07.jpg" andSaleOffPrice:@"free"];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:drink1, drink2, drink3, drink4, drink5, drink6, drink7, nil];
}

- (void) createDataBirthday {
    Dataitem *birthday1 = [[Dataitem alloc] initWithName:@"Opera" andPrice:@"$12" withImage:@"birthday01.jpg" andSaleOffPrice:@""];
    Dataitem *birthday2 = [[Dataitem alloc] initWithName:@"Tiramisu" andPrice:@"$23" withImage:@"birthday02.jpg" andSaleOffPrice:@""];
    Dataitem *birthday3 = [[Dataitem alloc] initWithName:@"Đại ngàn" andPrice:@"$13" withImage:@"birthday03.jpg" andSaleOffPrice:@""];
    Dataitem *birthday4 = [[Dataitem alloc] initWithName:@"Caramel" andPrice:@"$25" withImage:@"birthday04.jpg" andSaleOffPrice:@"-20%"];
    Dataitem *birthday5 = [[Dataitem alloc] initWithName:@"Thời đại hoàng kim" andPrice:@"$8" withImage:@"birthday05.jpg" andSaleOffPrice:@""];
    Dataitem *birthday6 = [[Dataitem alloc] initWithName:@"Nho dâu tây xanh" andPrice:@"$15" withImage:@"birthday06.jpg" andSaleOffPrice:@""];
    Dataitem *birthday7 = [[Dataitem alloc] initWithName:@"Ngọn lửa tình yêu" andPrice:@"$18" withImage:@"birthday07.jpg" andSaleOffPrice:@"-10%"];
    Dataitem *birthday8 = [[Dataitem alloc] initWithName:@"Dâu tây pha lê" andPrice:@"$18" withImage:@"birthday08.jpg" andSaleOffPrice:@""];
    Dataitem *birthday9 = [[Dataitem alloc] initWithName:@"Cà phê Ai-len" andPrice:@"$32" withImage:@"birthday09.jpg" andSaleOffPrice:@""];
    Dataitem *birthday10 = [[Dataitem alloc] initWithName:@"Gấu Pooh" andPrice:@"$20" withImage:@"birthday10.jpg" andSaleOffPrice:@""];
    Dataitem *birthday11 = [[Dataitem alloc] initWithName:@"Nhím gai" andPrice:@"$11" withImage:@"birthday11.jpg" andSaleOffPrice:@""];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:birthday1, birthday2, birthday3, birthday4, birthday5, birthday6, birthday7, birthday8, birthday9, birthday10, birthday11, nil];
}

- (void) createDataCookies {
    Dataitem *cookie1 = [[Dataitem alloc] initWithName:@"Hạt Điều Napoleon" andPrice:@"$11" withImage:@"cookies01.jpg" andSaleOffPrice:@""];
    Dataitem *cookie2 = [[Dataitem alloc] initWithName:@"Sôcôla Skate" andPrice:@"$5" withImage:@"cookies02.jpg" andSaleOffPrice:@""];
    Dataitem *cookie3 = [[Dataitem alloc] initWithName:@"Hạnh nhân mật ong" andPrice:@"$8" withImage:@"cookies03.jpg" andSaleOffPrice:@"-20%"];
    Dataitem *cookie4 = [[Dataitem alloc] initWithName:@"Sôcôla Chip" andPrice:@"$12" withImage:@"cookies04.jpg" andSaleOffPrice:@""];
    Dataitem *cookie5 = [[Dataitem alloc] initWithName:@"Cookie Cà phê" andPrice:@"$7" withImage:@"cookies05.jpg" andSaleOffPrice:@""];
    Dataitem *cookie6 = [[Dataitem alloc] initWithName:@"Cookie Ngũ cốc" andPrice:@"$9" withImage:@"cookies06.jpg" andSaleOffPrice:@""];
    Dataitem *cookie7 = [[Dataitem alloc] initWithName:@"Feng Li Nguyên vị" andPrice:@"$11" withImage:@"cookies07.jpg" andSaleOffPrice:@""];
    Dataitem *cookie8 = [[Dataitem alloc] initWithName:@"Feng Li Cà phê" andPrice:@"$10" withImage:@"cookies08.jpg" andSaleOffPrice:@""];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:cookie1, cookie2, cookie3, cookie4, cookie5, cookie6, cookie7, cookie8, nil];
}

- (void) createDataBread {
    Dataitem *bread1 = [[Dataitem alloc] initWithName:@"Donut" andPrice:@"$3" withImage:@"bread01.jpg" andSaleOffPrice:@""];
    Dataitem *bread2 = [[Dataitem alloc] initWithName:@"Puoluo" andPrice:@"$5" withImage:@"bread02.jpg" andSaleOffPrice:@""];
    Dataitem *bread3 = [[Dataitem alloc] initWithName:@"Croissants" andPrice:@"$10" withImage:@"bread03.jpg" andSaleOffPrice:@"-20%"];
    Dataitem *bread4 = [[Dataitem alloc] initWithName:@"Cà phê Đan Mạch" andPrice:@"$7" withImage:@"bread04.jpg" andSaleOffPrice:@""];
    Dataitem *bread5 = [[Dataitem alloc] initWithName:@"Dâu tây xanh Đan Mạch" andPrice:@"$6" withImage:@"bread05.jpg" andSaleOffPrice:@""];
    Dataitem *bread6 = [[Dataitem alloc] initWithName:@"Bánh Táo Đan Mạch" andPrice:@"$9" withImage:@"bread06.jpg" andSaleOffPrice:@""];
    Dataitem *bread7 = [[Dataitem alloc] initWithName:@"Vua Hokkaido" andPrice:@"$4" withImage:@"bread07.jpg" andSaleOffPrice:@""];
    Dataitem *bread8 = [[Dataitem alloc] initWithName:@"Cranberry" andPrice:@"$6" withImage:@"bread08.jpg" andSaleOffPrice:@""];
    Dataitem *bread9 = [[Dataitem alloc] initWithName:@"Sôcôla Thụy Sĩ" andPrice:@"$12" withImage:@"bread09.jpg" andSaleOffPrice:@""];
    Dataitem *bread10 = [[Dataitem alloc] initWithName:@"Mochi Cà phê" andPrice:@"$7" withImage:@"bread10.jpg" andSaleOffPrice:@""];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:bread1, bread2, bread3, bread4, bread5, bread6, bread7, bread8, bread9, bread10, nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrayDataItems.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = (CustomCell*)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    Dataitem *dataItem = [[Dataitem alloc] init];
    dataItem = arrayDataItems[indexPath.row];
    cell.LabelName.text = dataItem.name;
    cell.labelPrice.text = dataItem.price;
    cell.imgUImageView.image = dataItem.image;
    cell.labelSaleOff.text = dataItem.saleOff;  
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Dataitem *dataItem = [[Dataitem alloc] init];
    dataItem = arrayDataItems[indexPath.row];
    ShowDetailScreen *showDetailScreen = [[ShowDetailScreen alloc] init];
    showDetailScreen.imageFood = dataItem.image;
    showDetailScreen.stringNameFood = dataItem.name;
    showDetailScreen.stringPrice = dataItem.price;
    showDetailScreen.stringSaleOff = dataItem.saleOff;
    
    [self.navigationController pushViewController:showDetailScreen animated:YES];
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}
@end
