// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "YYKit",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(
            name: "YYKit",
            targets: ["YYKit"]
        ),
    ],
    dependencies: [
        // Add any dependencies you need
    ],
    targets: [
        .target(
            name: "YYKit",
            dependencies: [],
            path: "YYKit",
            exclude: [
                "Base/Foundation/NSObject+YYAddForARC.m",
                "Base/Foundation/NSThread+YYAdd.m"
            ],
            publicHeadersPath: "YYKit",
            cSettings: [
                .headerSearchPath("Base"),
                .headerSearchPath("UIKit"),
                .headerSearchPath("Cache"),
                .headerSearchPath("Image"),
                // Add other header search paths if needed
            ],
            swiftSettings: [
                .define("YY_KIT_SWIFT_PACKAGE")
            ],
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedLibrary("sqlite3"),
                // Add other linked libraries if needed
            ]
        
        ),
        .target(
            name: "YYKitNoArc",
            dependencies: [],
            path: "YYKit/Base",
            sources: [
                "Foundation/NSObject+YYAddForARC.m",
                "Foundation/NSThread+YYAdd.m"
            ],
            publicHeadersPath: "YYKit",
            cSettings: [
                .headerSearchPath(".")
            ],
            swiftSettings: [
                .define("YY_KIT_SWIFT_PACKAGE")
            ]
        ),
    ]
)
