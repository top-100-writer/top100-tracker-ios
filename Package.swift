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
        .binaryTarget(name: "TrackerTop100SDK", url: "https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.2.1/TrackerTop100SDK.xcframework.zip", checksum: "bca1fe63d57350a898cd194c8467994f1a948dc4d941066d557972132d46f5aa")
    ]
)
