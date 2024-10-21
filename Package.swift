// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TrackerTop100SDK",
    platforms: [
        .iOS(.v12),
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
            url: "https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.11.1/TrackerTop100SDK.xcframework.zip", 
            checksum: "08802ca3cd97a5f4ba965edf56c06199cd533c44b24739ac0d8e72293083120d"
        )
    ]
)
