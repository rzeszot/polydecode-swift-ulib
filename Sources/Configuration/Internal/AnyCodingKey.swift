import Foundation

struct AnyCodingKey: CodingKey {

  // MARK: - CodingKey

  var stringValue: String
  var intValue: Int?

  init?(stringValue: String) {
    self.stringValue = stringValue
  }

  init?(intValue: Int) {
    self.intValue = intValue
    self.stringValue = ""
  }
}
