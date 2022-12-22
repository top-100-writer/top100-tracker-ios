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
        .binaryTarget(name: "TrackerTop100SDK", url: "https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.2.0/TrackerTop100SDK.xcframework.zip", checksum: "80eefa1aaec690c97c299ea4ff12d9d2307090f22e79de9756c76eb624bca28f")
    ]
)
