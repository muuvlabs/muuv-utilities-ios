// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.2"
let checksum = "6edbd4021d6c647282dba0c4ff2831605f3bd28f7ab6ec112ba22caad8064ab3"

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
