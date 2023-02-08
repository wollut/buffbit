// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "buffbit",
    platforms: [
        .iOS(.v13),
        .tvOS(.v11),
        .macCatalyst(.v13),
        .macOS(.v10_13),
    ],
    products: [
        .library(
            name: "Buffbit",
            targets: ["Buffbit"]
        ),
    ],
    targets: [
        .target(
            name: "Buffbit",
            dependencies: [],
            path: "Sources/Buffbit",
            swiftSettings: [
                .define("DEBUG", .when(configuration: .debug)),
            ]
        ),
        .testTarget(
            name: "BuffbitTests",
            dependencies: ["Buffbit"]
        ),
    ]
)
