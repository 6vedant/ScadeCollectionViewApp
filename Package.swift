// swift-tools-version:5.3

import PackageDescription
import Foundation

let SCADE_SDK = ProcessInfo.processInfo.environment["SCADE_SDK"] ?? ""

let package = Package(
    name: "ScadeCollectionViewApp",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "ScadeCollectionViewApp",
            type: .static,
            targets: [
                "ScadeCollectionViewApp"
            ]
        )
    ],
    dependencies: [
       .package(name: "ScadeExtensions", url: "https://github.com/scade-platform/ScadeExtensions", .branch("main")),
    ],
    targets: [
        .target(
            name: "ScadeCollectionViewApp",
            dependencies: ["ScadeExtensions"],
            exclude: ["main.page"],
            swiftSettings: [
                .unsafeFlags(["-F", SCADE_SDK], .when(platforms: [.macOS, .iOS])),
                .unsafeFlags(["-I", "\(SCADE_SDK)/include"], .when(platforms: [.android])),
            ]
        )
    ]
)