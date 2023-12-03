import Foundation

class Cpf {
  var value: String

  init(value: String) {
    self.value = value
  }

  func handle() -> String {
    var formattedCPF = ""

    let cpfArray = Array(value)
    var index = 0

    for char in cpfArray {
      if char.isNumber {
        if index == 3 || index == 6 {
          formattedCPF.append(".")
        } else if index == 9 {
          formattedCPF.append("-")
        }

        formattedCPF.append(char)
        index += 1
      }
    }

    return formattedCPF
  }
}
