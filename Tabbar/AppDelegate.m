//
//  AppDelegate.m
//  Tabbar
//
//  Created by surfin-John on 2023/3/29.
//

#import "AppDelegate.h"
#import "TabbarTestFactory.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [TabbarTestFactory productTabbarController];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
