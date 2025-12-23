// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "MetalSprocketsSnapshotUI",
    platforms: [
        .iOS("18.5"),
        .macOS("15.5"),
        .visionOS("26.0")
    ],
    products: [
        .library(name: "MetalSprocketsSnapshotUI", targets: ["MetalSprocketsSnapshotUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/schwa/MetalSprockets", branch: "main"),
    ],
    targets: [
        .target(
            name: "MetalSprocketsSnapshotUI",
            dependencies: [
                .product(name: "MetalSprockets", package: "MetalSprockets"),
                .product(name: "MetalSprocketsUI", package: "MetalSprockets"),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
