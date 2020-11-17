import XCTest
@testable import Configuration

final class configurationTests: XCTestCase {

  struct Endpoints: Decodable {
    let root: URL
  }

  // MARK: -

  func testEndpoints() throws {
    let json = """
      {
        "endpoints": {
          "root": "https://example.org/"
        }
      }
      """

    let decoder = JSONDecoder()
    decoder.use(Endpoints.self, for: "endpoints")

    let root = try decoder.decode(Root.self, from: json.data(using: .utf8)!)
    let object: Endpoints = root["endpoints"]

    XCTAssertEqual(object.root.absoluteString, "https://example.org/")
  }

  static var allTests = [
    ("testEndpoints", testEndpoints),
  ]
}
