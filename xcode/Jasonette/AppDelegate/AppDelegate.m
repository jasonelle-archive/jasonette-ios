//
//  AppDelegate.m
//  Jasonette
//
//  Created by Jasonelle on 05-07-19.
//  Copyright © 2019 Jasonelle.
//

#import "AppDelegate.h"
#import "JasonAppDelegate.h"
#import "JasonLogger.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

#pragma mark - Lifecycle
- (BOOL)application: (UIApplication *) application
    didFinishLaunchingWithOptions:(NSDictionary *) launchOptions
{
    // Override point for customization after application launch.
    [JasonAppDelegate application:application
    didFinishLaunchingWithOptions:launchOptions];
    
    // Can customize logging handler and level
#if DEBUG
    [JasonLogger setupWithLogLevelDebug];
#else
    [JasonLogger setupWithLogLevelError];
#endif
    
    return YES;
}

- (BOOL) application: (UIApplication *) application
            openURL: (NSURL *) url
  sourceApplication: (NSString *) sourceApplication
         annotation: (id) annotation
{
    return [JasonAppDelegate
     application:application
     openURL:url
     sourceApplication:sourceApplication
     annotation:annotation];
}

- (void) applicationDidBecomeActive: (UIApplication *) application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    [JasonAppDelegate applicationDidBecomeActive:application];
}

#pragma mark - Notifications
#ifdef PUSH
- (void) application:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken: (NSData *) deviceToken
{
    [JasonAppDelegate
     application:application
     didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
}

- (void) application: (UIApplication *) application
didReceiveRemoteNotification:(NSDictionary *) userInfo
{
    [JasonAppDelegate
     application:application
     didReceiveRemoteNotification:userInfo];
}

- (void) application: (UIApplication *) application
didFailToRegisterForRemoteNotificationsWithError: (NSError *) error
{
    [JasonAppDelegate
     application:application
    didFailToRegisterForRemoteNotificationsWithError:error];
}
#endif

#pragma mark - Other methods
/* // Other lifecycle methods
 - (void)applicationWillResignActive:(UIApplication *)application {
 // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
 // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
 }
 
 
 - (void)applicationDidEnterBackground:(UIApplication *)application {
 // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
 // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
 }
 
 
 - (void)applicationWillEnterForeground:(UIApplication *)application {
 // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
 }
 
 - (void)applicationWillTerminate:(UIApplication *)application {
 // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
 }
 */
@end
