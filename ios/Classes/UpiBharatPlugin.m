#import "UpiBharatPlugin.h"
#if __has_include(<upi_bharat/upi_bharat-Swift.h>)
#import <upi_bharat/upi_bharat-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "upi_bharat-Swift.h"
#endif

@implementation UpiBharatPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftUpiBharatPlugin registerWithRegistrar:registrar];
}
@end
