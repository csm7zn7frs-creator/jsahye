#import <substrate.h>
#import <Foundation/Foundation.h>

%ctor {
    NSLog(@"🔥 RelaxinDemo 瘾根插件已加载！");
}

%hook SpringBoard
- (void)applicationDidFinishLaunching:(id)app {
    %orig;
    NSLog(@"✅ Hook SpringBoard 完成，请到设置打开RelaxinDemo面板");
}
%end
