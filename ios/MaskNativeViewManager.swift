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
  override init(frame: CGRect) {
    super.init(frame: frame)
    addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  @objc func textFieldDidChange() {
    if let text = self.text {
      print(text)
    }
  }
}
