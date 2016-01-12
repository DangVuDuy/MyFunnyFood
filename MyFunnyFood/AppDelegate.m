//
//  AppDelegate.m
//  MyFunnyFood
//
//  Created by Dang Vu Duy on 1/5/16.
//  Copyright © 2016 Dang Vu Duy. All rights reserved.
//

#import "AppDelegate.h"
#import "MainScreen.h"
#import "SaleOffScreen.h"
#import "AddressScreen.h"
#import "AboutScreen.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    MainScreen *mainScreen = [[MainScreen alloc] initWithNibName:@"MainScreen" bundle:nil];
    mainScreen.title = @"Funny Food";
    UINavigationController *naviMainScreen = [[UINavigationController alloc] initWithRootViewController:mainScreen];
    naviMainScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Menu"
                                                              image:[[UIImage imageNamed:@"menuWhite"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                      selectedImage:[UIImage imageNamed:@"menuWhite"]];
    
    SaleOffScreen *saleScreen = [[SaleOffScreen alloc] init];
    saleScreen.title = @"Sale Off";
    UINavigationController *naviSaleOffScreen = [[UINavigationController alloc] initWithRootViewController:saleScreen];
    naviSaleOffScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Sale"
                                                                 image:[[UIImage imageNamed:@"sale"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                         selectedImage:[UIImage imageNamed:@"sale"]];
    
    AddressScreen *addressScreen = [[AddressScreen alloc] init];
    addressScreen.title = @"Address";
    UINavigationController *naviAddressScreen = [[UINavigationController alloc] initWithRootViewController:addressScreen];
    naviAddressScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Address"
                                                                 image:[[UIImage imageNamed:@"shopWhite2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                         selectedImage:[UIImage imageNamed:@"shopWhite2"]];
    
    AboutScreen *aboutScreen = [[AboutScreen alloc] init];
    aboutScreen.title = @"About";
    UINavigationController *naviAboutScreen = [[UINavigationController alloc] initWithRootViewController:aboutScreen];
    naviAboutScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"About"
                                                               image:[[UIImage imageNamed:@"aboutWhite"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                       selectedImage:[UIImage imageNamed:@"aboutWhite"]];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers =@[naviMainScreen, naviSaleOffScreen, naviAddressScreen, naviAboutScreen];
    tabBarController.tabBar.tintColor = [UIColor blueColor];
    tabBarController.tabBar.backgroundImage = [UIImage imageNamed:@"Banner"];
    tabBarController.tabBar.translucent = YES;
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor colorWithRed:1 green:1 blue:1 alpha:1]} forState:UIControlStateSelected];
    NSShadow *shadow = [[NSShadow alloc] init];
    
    shadow.shadowColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.8];
    shadow.shadowOffset = CGSizeMake(0, 1);
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIColor blueColor], NSForegroundColorAttributeName,
                                                           shadow, NSShadowAttributeName,
                                                           [UIFont fontWithName:@"arial rounded mt bold" size:23], NSFontAttributeName, nil]];
    
    [[UINavigationBar appearance] setTintColor:[UIColor blueColor]];
    [[UINavigationBar appearance] setTranslucent:YES];

    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    //NSLog(@"%3.0f - %3.0f",tabBarController.tabBar.bounds.size.width, tabBarController.tabBar.bounds.size.height);
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
