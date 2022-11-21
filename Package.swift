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
        .binaryTarget(name: "TrackerTop100SDK", url: "https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.1.1/TrackerTop100SDK.xcframework.zip", checksum: "7d26a65238e51c4907beeaa220fe6c47724da0b3931340308cda1b779316b380")
    ]
)
