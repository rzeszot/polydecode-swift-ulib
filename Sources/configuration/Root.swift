import Foundation

public class Root: Decodable {

  private var content: [String: Decodable] = [:]

  // MARK: - Decodable

  public required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: AnyCodingKey.self)

    for (key, value) in decoder.configuration?.types ?? [:] {
      let nested = try container.superDecoder(forKey: AnyCodingKey(stringValue: key)!)

      content[key] = try value.init(from: nested)
    }
  }

  public subscript<T: Decodable>(safe key: String) -> T? {
    content[key] as? T
  }

  public subscript<T: Decodable>(key: String) -> T {
    self[safe: key]!
  }
}

