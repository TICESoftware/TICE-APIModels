// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TICEAPIModels",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "TICEAPIModels",
            targets: ["TICEAPIModels"])
    ],
    targets: [
        .target(
            name: "TICEAPIModels",
            dependencies: [],
            path: "Sources"),
        .testTarget(name: "TICEAPIModelsTests", dependencies: ["TICEAPIModels"])
    ]
)
