// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "posthog-ios",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "posthog-ios",
            targets: ["posthog-ios"]
        ),
    ],
    dependencies: [
        .package(url: "UIKit", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "posthog-ios",
            path: "PostHog",
            publicHeadersPath: "PostHog"
        ),
        .testTarget(
            name: "posthog-iosTests",
            dependencies: ["posthog-ios"],
            path: "PostHogTests",
            exclude: ["SerializationTests.m", "Utils"]
        )
    ]
)
