// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "Configuration",
  products: [
    .library(
      name: "Configuration",
      targets: ["Configuration"]
    ),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "Configuration",
      dependencies: []
    ),
    .testTarget(
      name: "ConfigurationTests",
      dependencies: ["Configuration"]
    ),
  ]
)
