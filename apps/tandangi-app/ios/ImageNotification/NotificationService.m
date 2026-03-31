#import "NotificationService.h"
#import "FirebaseMessaging.h"

@interface NotificationService () <NSURLSessionDelegate>

@property(nonatomic) void (^contentHandler)(UNNotificationContent *contentToDeliver);
@property(nonatomic) UNMutableNotificationContent *bestAttemptContent;

@end

@implementation NotificationService

/* Uncomment this if you are using Firebase Auth
- (BOOL)application:(UIApplication *)app
            openURL:(NSURL *)url
            options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options {
  if ([[FIRAuth auth] canHandleURL:url]) {
    return YES;
  }
  return NO;
}

- (void)scene:(UIScene *)scene openURLContexts:(NSSet<UIOpenURLContext *> *)URLContexts {
  for (UIOpenURLContext *urlContext in URLContexts) {
    [FIRAuth.auth canHandleURL:urlContext.URL];
  }
}
*/

- (void)didReceiveNotificationRequest:(UNNotificationRequest *)request
                   withContentHandler:(void (^)(UNNotificationContent * _Nonnull))contentHandler {
    NSLog(@"[ImageNotification] didReceiveNotificationRequest called");
    NSLog(@"[ImageNotification] userInfo = %@", request.content.userInfo);

    self.contentHandler = contentHandler;
    self.bestAttemptContent = [request.content mutableCopy];

    [[FIRMessaging extensionHelper]
        populateNotificationContent:self.bestAttemptContent
                 withContentHandler:^(UNNotificationContent * _Nonnull contentToDeliver) {
        NSLog(@"[ImageNotification] content delivered = %@", contentToDeliver.userInfo);
        contentHandler(contentToDeliver);
    }];
}

- (void)serviceExtensionTimeWillExpire {
    NSLog(@"[ImageNotification] serviceExtensionTimeWillExpire");
    self.contentHandler(self.bestAttemptContent);
}

@end