// swift-tools-version:5.8
import PackageDescription
let package = Package(
    name: "www-data",
    platforms: [.macOS(.v11), .iOS(.v13)],
    products: [
        .executable(name: "www-data", targets: ["www-data"])
    ],
    dependencies: [
        .package(url: "https://github.com/TokamakUI/Tokamak", from: "0.11.0")
    ],
    targets: [
        .executableTarget(
            name: "www-data",
            dependencies: [
                "www-dataLibrary",
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
        .target(
            name: "www-dataLibrary",
            dependencies: []),
        .testTarget(
            name: "www-dataLibraryTests",
            dependencies: ["www-dataLibrary"]),
    ]
)