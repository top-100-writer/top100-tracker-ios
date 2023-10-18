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
            url: "https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.8.2/TrackerTop100SDK.xcframework.zip", 
            checksum: "c75846d660844726f7ad960ecae6d73dd9242e98239170ec6c35f49f4513ae6e"
        )
    ]
)
