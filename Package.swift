// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "XCDLumberjackNSLogger",
    platforms: [
        .iOS(.v14),
        .macOS(.v12)
    ],
    products: [
        .library(name: "XCDLumberjackNSLogger", targets: ["XCDLumberjackNSLogger"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/CocoaLumberjack/CocoaLumberjack",
            // v3.7.2
            .revision("e518eb6e362df327574ba5e04269cd6d29f40aec")

        ),
        .package(
            url: "https://github.com/fpillet/NSLogger",
            // 1.9.7, but with SPM support commit added.
            .revision("3408cce1ff97bef20f3dcf367a02019b5c51d198")
        )
    ],
    targets: [
        .target(
            name: "XCDLumberjackNSLogger",
            dependencies: [
               .product(name: "CocoaLumberjack", package: "CocoaLumberjack"),
               .product(name: "NSLogger", package: "NSLogger"),
            ],
            path: "./",
            exclude: [
                "XCDLumberjackNSLogger.podspec",
                "XCDLumberjackNSLogger Demo",
                "XCDLumberjackNSLogger.xcworkspace",
                "XCDLumberjackNSLogger.xcodeproj",
                "Scripts",
                "Carthage",
                "Cartfile",
                "Cartfile.resolved"
            ],
            publicHeadersPath: "XCDLumberjackNSLogger"
        )
    ]
)
