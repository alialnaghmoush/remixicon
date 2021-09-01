#import "RemixiconPlugin.h"
#if __has_include(<remixicon/remixicon-Swift.h>)
#import <remixicon/remixicon-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "remixicon-Swift.h"
#endif

@implementation RemixiconPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRemixiconPlugin registerWithRegistrar:registrar];
}
@end
