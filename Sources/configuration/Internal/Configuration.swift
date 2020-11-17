import Foundation

class Configuration {

  private(set) var types: [String: Decodable.Type] = [:]

  subscript(_ key: String) -> Decodable.Type? {
    get {
      return types[key]
    }
    set {
      types[key] = newValue
    }
  }
}
