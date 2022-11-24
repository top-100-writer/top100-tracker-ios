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
            targets: ["TrackerTop100SDK"]),
        ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "TrackerTop100SDK", url: "https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.1.2/TrackerTop100SDK.xcframework.zip", checksum: "4ecb4d9aac928028c3e9f0df629a805b88a51cfabdd5624d8e437b2ed81b1c8f")
    ]
)
