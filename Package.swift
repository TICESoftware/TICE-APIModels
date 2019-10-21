// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TICEModels",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "TICEModels",
            targets: ["TICEModels"])
    ],
    targets: [
        .target(
            name: "TICEModels",
            dependencies: [],
            path: "Sources")
    ]
)
