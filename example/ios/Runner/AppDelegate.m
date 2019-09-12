#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#import <Analytics/SEGAnalytics.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
  SEGAnalyticsConfiguration *configuration = [SEGAnalyticsConfiguration configurationWithWriteKey:@"<YOUR_WRITE_KEY>"];
    configuration.trackApplicationLifecycleEvents = YES;
    [SEGAnalytics setupWithConfiguration:configuration];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
