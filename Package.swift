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
            url: "https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.5.0/TrackerTop100SDK.xcframework.zip", 
            checksum: "4e82c269d532a1f792c8309286cde9402440794314d585128abc79e480340b98"
        )
    ]
)
