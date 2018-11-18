
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

@interface RCT_EXTERN_MODULE (RNMidi, NSObject)

RCT_EXPORT_MODULE();

RCT_EXTERN_METHOD(setup);
RCT_EXTERN_METHOD(listEntities);

@end
