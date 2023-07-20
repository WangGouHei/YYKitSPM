// swift-tools-version:5.1
import PackageDescription

let package = Package(
  name: "YYKit",
  platforms: [.iOS(.v9)],
  products: ([
    [
      .library(name: "YYKit", targets: ["YYKit"]),
    ],
  ] as [[Product]]).flatMap { $0 },
  targets: ([
    [
        .target(
            name: "YYKit",
            dependencies: [],
            path: "YYKit",
            exclude: [
                           "YYKit/Base",
                           "YYKit/UIKit",
                           "YYKit/Cache",
                           "YYKit/Image",
                           // 排除其他不需要的文件夹
                       ],
            publicHeadersPath: "include"
        ),
    ],
  ] as [[Target]]).flatMap { $0 }
)
