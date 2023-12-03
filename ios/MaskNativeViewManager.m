#import <React/RCTViewManager.h>
#import <React/RCTEventDispatcher.h>


@interface RCT_EXTERN_MODULE(MaskNativeViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(value, NSString)
RCT_EXPORT_VIEW_PROPERTY(onChangeValue, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(maskType, NSString)

@end
