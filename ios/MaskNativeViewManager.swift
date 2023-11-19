import UIKit

@objc(MaskNativeViewManager)

class MaskNativeViewManager: RCTViewManager {

  override func view() -> (MaskNativeView) {
    return MaskNativeView()
  }

  @objc override static func requiresMainQueueSetup() -> Bool {
    return true
  }
}

class MaskNativeView : UITextField {
  @objc var value: String = "" {
    didSet {
      self.text = value
    }
  }

  @objc var onChangeValue: RCTBubblingEventBlock?

  override init(frame: CGRect) {
    super.init(frame: frame)
    addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  @objc func textFieldDidChange() {
    if let text = self.text {
      var value: String = ""

      // test mask
      if text == "11" {
        value = "2"
      }
      else {
        value = text
      }

      onChangeValue?(["value": value])
    }
  }
}
