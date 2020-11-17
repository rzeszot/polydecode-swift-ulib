import Foundation

extension JSONDecoder {
  public func use(_ decodable: Decodable.Type, for key: String) {
    configuration[key] = decodable
  }

  private var configuration: Configuration {
    let configuration = userInfo[.configuration] as? Configuration ?? Configuration()
    userInfo[.configuration] = configuration
    return configuration
  }
}

private extension CodingUserInfoKey {
  static var configuration: Self {
    CodingUserInfoKey(rawValue: "Configuration")!
  }
}

extension Decoder {
  var configuration: Configuration? {
    userInfo[.configuration] as? Configuration
  }
}
