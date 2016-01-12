//
//  AddressScreen.m
//  MyFunnyFood
//
//  Created by Dang Vu Duy on 1/5/16.
//  Copyright © 2016 Dang Vu Duy. All rights reserved.
//

#import "AddressScreen.h"
#import "DetailAddress.h"

@interface AddressScreen () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation AddressScreen {
    NSArray *arrayShop;
    NSArray *arrayLocation;
    NSArray *arrayphoneNumber;
    NSArray *arrayMap;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    arrayShop = @[@"Shop 1", @"Shop 2"];
    arrayLocation = @[@"N14, ngõ 4, Nguyễn Đình Chiểu", @"81, Lê Văn Lương"];
    arrayphoneNumber = @[@"01687183576", @"0942852206"];
    arrayMap = @[@"mapNDC.png", @"mapLVL.png"];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return arrayShop.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell = [cell
            initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    cell.textLabel.text = [arrayShop objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:25];
    cell.textLabel.textColor = [UIColor blueColor];
    cell.detailTextLabel.text = [arrayLocation objectAtIndex:indexPath.row];
    cell.detailTextLabel.textColor = [UIColor blackColor];
    cell.detailTextLabel.font = [UIFont fontWithName:@"Helvetica" size:17];
    
    cell.imageView.image = [UIImage imageNamed:@"location2"];
    
    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailAddress *detailAddress = [[DetailAddress alloc] initWithNibName:@"DetailAddress" bundle:nil];
    detailAddress.stringTitleDetailAddress = arrayShop[indexPath.row];
    detailAddress.stringAddress = arrayLocation[indexPath.row];
    detailAddress.stringPhoneNumber = arrayphoneNumber[indexPath.row];
    detailAddress.stringMap = arrayMap[indexPath.row];
    [self.navigationController pushViewController:detailAddress animated:YES];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return 70;
}

@end
