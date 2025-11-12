// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Data",
    platforms: [
        .iOS(.v18),
        .macOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Data",
            targets: ["Data"]
        ),
    ],
    dependencies: [
        // Differentiable Swift - Core differentiation library
        .package(url: "https://github.com/differentiable-swift/swift-differentiation.git", from: "1.1.1"),
        // Differentiable Swift Numerics - Numeric operations with differentiation support
        .package(url: "https://github.com/differentiable-swift/swift-numerics-differentiable.git", from: "1.2.0"),
    ],
    targets: [
        .target(
            name: "Data",
            dependencies: [
                .product(name: "Differentiation", package: "swift-differentiation"),
                .product(name: "RealModuleDifferentiable", package: "swift-numerics-differentiable"),
            ]
        ),
        .testTarget(
            name: "DataTests",
            dependencies: ["Data"]
        ),
    ]
)
