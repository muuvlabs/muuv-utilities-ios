// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.4"
let checksum = "e398f97d460cf9a6e120833028f6d7c3e0ad3d597c408ef7c0f0239fc25acbd0"

let package = Package(
    name: "WPCoreFramework",
    platforms: [
        .iOS(.v15),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "WPCoreFramework",
            targets: ["WPCoreFramework"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),        
    ],
    targets: [
        .binaryTarget(
            name: "WPCoreFramework",
            url: "https://github.com/muuvlabs/muuv-utilities-ios/WPCoreFramework/\(version)/WPCoreFramework_\(version).xcframework.zip",
            checksum: checksum
        )
    ]
)
