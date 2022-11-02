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
        .binaryTarget(name: "TrackerTop100SDK", url: "https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.0.0/TrackerTop100SDK.xcframework.zip", checksum: "9abab031e185e2207f14fb20d345322f9c382a67b599d7fb84f7a3b4029c9ab7")
    ]
)
