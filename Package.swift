// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LetsMeetModels",
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
