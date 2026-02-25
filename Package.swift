// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SVGAPlayer_Optimized",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "SVGAPlayer_Optimized",
            targets: ["SVGAPlayer_Optimized"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/Rogue24/SVGAPlayer-iOS.git",
            branch: "SPM"
        ),
    ],
    targets: [
        .target(
            name: "SVGARePlayer",
            dependencies: [
                .product(
                    name: "SVGAPlayer",
                    package: "SVGAPlayer-iOS"
                ),
            ],
            path: "Sources/SVGARePlayer",
            publicHeadersPath: "."
        ),
        .target(
            name: "SVGAPlayer_Optimized",
            dependencies: [
                "SVGARePlayer"
            ],
            path: "Sources/SVGAExPlayer"
        ),
    ]
)
