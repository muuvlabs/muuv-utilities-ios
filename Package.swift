// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WorkoutsPlayerWrapper",
    platforms: [
        .iOS(.v15),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "WorkoutsPlayerWrapper",
            targets: ["WorkoutsPlayerUI"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "WorkoutsPlayerWrapper",
            dependencies: ["WorkoutsPlayerUI"]
        ),
        .binaryTarget(
            name: "WorkoutsPlayerUI",
            url: "https://github.com/muuvlabs/muuv-utilities-ios/raw/master/WorkoutsPlayerUI/0.0.1/WorkoutsPlayerUI-0.0.1.xcframework.zip",
            checksum: "c5c896187745a1422cf3bb9055f340bc6933fe7351f62ca709e35a5940af6e5f"
        )
    ]
)
