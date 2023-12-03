import Foundation

class MaskController {
  var maskType: String
  var value: String

  init(maskType: String, value: String) {
    self.maskType = maskType
    self.value = value
  }

  func execute() -> String {
    switch maskType {
      case "cpf":
        return Cpf(value: value).handle()
      default:
        return value
    }
  }
}
