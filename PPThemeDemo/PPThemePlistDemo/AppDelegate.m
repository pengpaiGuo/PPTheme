//
//  AppDelegate.m
//  PPThemePlistDemo
//
//  Created by Pai on 2020/6/11.
//  Copyright © 2020 Pai. All rights reserved.
//

#import "AppDelegate.h"
#import "MyThemeTool.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [PPThemeManager setThemeWithPlistInMainBundle:@"Red"];

    [[UIApplication sharedApplication]theme_setStatusBarStyle:[PPThemeStatusBarStylePicker pickerWithKeyPath:@"UIStatusBarStyle"] animated:YES];
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    navigationBar.theme_tintColor = [PPThemeColorPicker pickerWithKeyPath:@"Global.barTextColor"];
    navigationBar.theme_barTintColor = [PPThemeColorPicker pickerWithKeyPath:@"Global.barTintColor"];
    navigationBar.theme_titleTextAttributes = [PPThemeStringAttrPicker pickerWithKeyPath:@"Global.barTextColor" map:^NSDictionary<NSAttributedStringKey,id> *(id value){
        if ([value isKindOfClass:[NSString class]]) {
            UIColor * color = [UIColor colorWithHexString:value];
            NSShadow * shadow = [[NSShadow alloc]init];
            shadow.shadowOffset = CGSizeZero;
            NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
            attributes[NSForegroundColorAttributeName] = color;
            attributes[NSFontAttributeName] = [UIFont systemFontOfSize:20];
            attributes[NSShadowAttributeName] = shadow;
            return attributes;;
        }
        return nil;
    }];
    
    UITabBar * tabBar = [UITabBar appearance];
    tabBar.theme_tintColor = [PPThemeColorPicker pickerWithKeyPath:@"Global.barTextColor"];
    tabBar.theme_barTintColor = [PPThemeColorPicker pickerWithKeyPath:@"Global.barTintColor"];
    [PPThemeManager setNightThemeIndex:PPThemeTypeNight];

    // Override point for customization after application launch.
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
