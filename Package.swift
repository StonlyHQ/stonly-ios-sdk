// swift-tools-version:5.5
import PackageDescription


// Two library products:
//   • "StonlyWidget" — the historical product. Points at the binary xcframework only.
//     Host apps consuming this must add `sentry-cocoa` to their own Package.swift:
//         .package(url: "https://github.com/getsentry/sentry-cocoa.git", from: "8.35.0")
//     The Stonly xcframework is built with `@_implementationOnly import Sentry`, so
//     the Sentry dylib must be available at link time.
//
//   • "StonlyKit" — recommended for new integrations. Wraps the binary xcframework
//     with a Swift shim that declares Sentry as a transitive dependency, so host
//     apps get Sentry for free. `import Stonly` keeps working because the shim
//     re-exports the binary module.
//
// CocoaPods consumers ignore this file entirely; `Stonly.podspec` declares the
// Sentry dependency directly.
let package = Package(
    name: "StonlyWidget",
    platforms: [
        .macOS(.v10_14), .iOS(.v14), .tvOS(.v14)
    ],
    products: [
        .library(name: "StonlyWidget", targets: ["Stonly"]),
        .library(name: "StonlyKit", targets: ["StonlyKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/getsentry/sentry-cocoa.git", from: "8.35.0")
    ],
    targets: [
        .binaryTarget(
            name: "Stonly",
            path: "Stonly.xcframework"
        ),
        .target(
            name: "StonlyKit",
            dependencies: [
                .target(name: "Stonly"),
                .product(name: "Sentry", package: "sentry-cocoa")
            ],
            path: "Sources/StonlyKit"
        )
    ]
)