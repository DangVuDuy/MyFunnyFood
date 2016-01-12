//
//  SaleOffScreen.m
//  MyFunnyFood
//
//  Created by Dang Vu Duy on 1/5/16.
//  Copyright © 2016 Dang Vu Duy. All rights reserved.
//

#import "SaleOffScreen.h"
#import "CustomCell.h"
#import "DataItem.h"
#import "ShowDetailScreen.h"

@interface SaleOffScreen ()

@end

@implementation SaleOffScreen
{
    NSArray *arraySaleOff;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"Cell" ];
    [self CreatDataSaleOff];

    
}
-(void)CreatDataSaleOff {
       Dataitem *iceCreamSaleOff1 = [[Dataitem alloc] initWithName:@"Kem sữa dừa" andPrice:@"$12" withImage:@"cream02.jpg" andSaleOffPrice:@"-30%"];
      Dataitem *iceCreamSaleOff2 = [[Dataitem alloc] initWithName:@"Kem Rum nho" andPrice:@"$14" withImage:@"cream03.jpg" andSaleOffPrice:@"-10%"];
    Dataitem *drinkSaleOff1 = [[Dataitem alloc] initWithName:@"Techmaster Café" andPrice:@"$27" withImage:@"drink04.jpg" andSaleOffPrice:@"free"];
        Dataitem *drinkSaleOff2 = [[Dataitem alloc] initWithName:@"Hồng trà đào" andPrice:@"$33" withImage:@"drink07.jpg" andSaleOffPrice:@"free"];
     Dataitem *birthdaySaleOff1 = [[Dataitem alloc] initWithName:@"Caramel" andPrice:@"$25" withImage:@"birthday04.jpg" andSaleOffPrice:@"-20%"];
     Dataitem *birthdaySaleOff2 = [[Dataitem alloc] initWithName:@"Ngọn lửa tình yêu" andPrice:@"$18" withImage:@"birthday07.jpg" andSaleOffPrice:@"-10%"];
     Dataitem *cookieSaleOff = [[Dataitem alloc] initWithName:@"Hạnh nhân mật ong" andPrice:@"$8" withImage:@"cookies03.jpg" andSaleOffPrice:@"-20%"];
      Dataitem *breadSaleOff = [[Dataitem alloc] initWithName:@"Croissants" andPrice:@"$10" withImage:@"bread03.jpg" andSaleOffPrice:@"-20%"];
    arraySaleOff = [[NSMutableArray alloc] initWithObjects:iceCreamSaleOff1, iceCreamSaleOff2, drinkSaleOff1, drinkSaleOff2, birthdaySaleOff1, birthdaySaleOff2, cookieSaleOff, breadSaleOff, nil];

    
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return arraySaleOff.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = (CustomCell*)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    Dataitem *dataItem = [[Dataitem alloc] init];
    dataItem = arraySaleOff[indexPath.row];
    cell.imgUImageView.image = dataItem.image;
    cell.LabelName.text = dataItem.name;
    cell.labelPrice.text = dataItem.price;
    cell.labelSaleOff.text = dataItem.saleOff;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Dataitem *dataItem = [[Dataitem alloc] init];
    dataItem = arraySaleOff[indexPath.row];
    ShowDetailScreen *showDetailScreen = [[ShowDetailScreen alloc] init];
    showDetailScreen.imageFood = dataItem.image;
    showDetailScreen.stringNameFood = dataItem.name;
    showDetailScreen.stringPrice = dataItem.price;
    showDetailScreen.stringSaleOff = dataItem.saleOff;
    
    [self.navigationController pushViewController:showDetailScreen animated:YES];
}
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
