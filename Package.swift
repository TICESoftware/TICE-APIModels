// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LetsMeetModels",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "LetsMeetModels",
            targets: ["LetsMeetModels"])
    ],
    targets: [
        .target(
            name: "LetsMeetModels",
            dependencies: [],
            path: "Sources")
    ]
)
