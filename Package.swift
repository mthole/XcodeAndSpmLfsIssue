// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "MyLibrary", targets: ["MyLibrary"]),
    ],
    dependencies: [
        .package(name: "DummyPackageWithLFS", url: "https://github.com/mthole/DummyPackageWithLFS", .branch("main")),
    ],
    targets: [
        .target(name: "MyLibrary", dependencies: ["DummyPackageWithLFS"]),
    ]
)
