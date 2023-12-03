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

  @objc var maskType: String = ""

  @objc var onChangeValue: RCTDirectEventBlock?

  override init(frame: CGRect) {
    super.init(frame: frame)
    addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  @objc func textFieldDidChange() {
    if let text = self.text {
      var newValue: String = MaskController(maskType: maskType, value: text).execute()

      onChangeValue?(["value": newValue])

      self.text = newValue
    }
  }
}
