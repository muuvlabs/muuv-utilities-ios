// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.20"
let checksum = "f7dc24f635f4862802939bbeff19342adbe3c5336c87438b5e9cd3cfbe770e6b"

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
