// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TrackerTop100SDK",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "TrackerTop100SDK",
            targets: ["TrackerTop100SDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "TrackerTop100SDK", 
            url: "https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.5.1/TrackerTop100SDK.xcframework.zip", 
            checksum: "b3a12143d85ae6f4b9d8b8bc186a7f5f4811479c151eb058f034df627655fa2f"
        )
    ]
)
