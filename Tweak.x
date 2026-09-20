#import <substrate.h>
#import <UIKit/UIKit.h>

%hook SpringBoard
- (void)applicationDidFinishLaunching {
    %orig;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"✅ Codespaces编译成功"
                                                                         message:@"Relaxin iOS17.1.1 rootless 测试"
                                                                  preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:ok];
        UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
        [rootVC presentViewController:alert animated:YES completion:nil];
    });
}
%end
