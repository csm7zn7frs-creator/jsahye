%hook SpringBoard
- (void)applicationDidFinishLaunching:(id)application {
    %orig;
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"成功" message:@"插件加载正常！" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:ok];
    UIWindow *win = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    win.rootViewController = [UIViewController new];
    win.windowLevel = 10000;
    [win makeKeyAndVisible];
    [win.rootViewController presentViewController:alert animated:YES completion:nil];
}
%end

