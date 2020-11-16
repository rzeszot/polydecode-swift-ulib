import XCTest

import configurationTests

var tests = [XCTestCaseEntry]()
tests += configurationTests.allTests()
XCTMain(tests)
