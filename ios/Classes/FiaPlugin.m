#import "FiaPlugin.h"
#if __has_include(<fia/fia-Swift.h>)
#import <fia/fia-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fia-Swift.h"
#endif

@implementation FiaPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFiaPlugin registerWithRegistrar:registrar];
}
@end
