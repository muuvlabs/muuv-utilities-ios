// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.4"
let checksum = "e398f97d460cf9a6e120833028f6d7c3e0ad3d597c408ef7c0f0239fc25acbd0"

let package = Package(
    name: "MuuvUtilities",
    platforms: [
        .iOS(.v15),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "MuuvUtilities",
            targets: ["MuuvUtilities"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),        
    ],
    targets: [
        .binaryTarget(
            name: "MuuvUtilities",
            url: "https://github.com/muuvlabs/muuv-utilities-ios/releases/download/\(version)/MuuvUtilities_\(version).xcframework.zip",
            checksum: checksum
        )
    ]
)
