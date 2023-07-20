// swift-tools-version:5.1
import PackageDescription

let package = Package(
  name: "YYKit",
  platforms: [.iOS(.v9)],
  products: ([
    [
      .library(name: "YYKit", targets: ["YYKitBase","YYKitCache"]),
    ],
  ] as [[Product]]).flatMap { $0 },
  targets: ([
    [
        .target(
            name: "YYKitBase",
            dependencies: [],
            path: "YYKit/Base",
            publicHeadersPath: "include"
        ),
        .target(
            name: "YYKitCache",
            dependencies: [],
            path: "YYKit/Cache",
            publicHeadersPath: "include"
        ),
    ],
  ] as [[Target]]).flatMap { $0 }
)
