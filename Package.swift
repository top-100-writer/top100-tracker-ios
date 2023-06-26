// swift-tools-version: 5.7
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
            url: "https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.7.1/TrackerTop100SDK.xcframework.zip", 
            checksum: "cf498ff261efb7a7acea6bc4a6d0129a9b47ea3abf54b4f76c3885e0346706e7"
        )
    ]
)
