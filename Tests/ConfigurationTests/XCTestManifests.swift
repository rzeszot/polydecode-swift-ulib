import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
  [
    testCase(ConfigurationTests.allTests),
  ]
}
#endif
