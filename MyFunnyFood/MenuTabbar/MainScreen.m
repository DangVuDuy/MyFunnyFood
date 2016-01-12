//
//  MainScreen.m
//  MyFunnyFood
//
//  Created by Dang Vu Duy on 1/5/16.
//  Copyright © 2016 Dang Vu Duy. All rights reserved.
//

#import "MainScreen.h"
#import "DetailScreen.h"

@interface MainScreen ()
@property(nonatomic, strong) DetailScreen *detailScreen;

@end

@implementation MainScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
- (IBAction)btnicecream:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
        
    }
    self.detailScreen.stringTitleDetailScreen = @"Ice Cream";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}

- (IBAction)btndrink:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
        self.detailScreen.stringTitleDetailScreen = @"Drink";
    }
    self.detailScreen.stringTitleDetailScreen = @"Drink";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
    
}

- (IBAction)btnbirday:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
        
    }
    self.detailScreen.stringTitleDetailScreen = @"Birthday";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
    
}

- (IBAction)btncookie:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
        
    }
    self.detailScreen.stringTitleDetailScreen = @"Cookies";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
    
}

- (IBAction)btnbread:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
        
    }
    self.detailScreen.stringTitleDetailScreen = @"Bread";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
    
}

@end
